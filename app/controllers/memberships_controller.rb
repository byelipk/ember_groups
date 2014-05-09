class MembershipsController < ApplicationController
  respond_to :json

  def create
    @membership = Membership.new(membership_params)
    if @membership.save
      render json: @membership, status: 200
    else
      render json: @membership.errors, status: 422
    end
  end

  def destroy
    binding.pry
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id, :group_id)
  end
end
