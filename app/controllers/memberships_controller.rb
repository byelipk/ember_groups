class MembershipsController < ApplicationController
  respond_to :json

  def show # Just for debugging
    @membership = Membership.find(params[:id])
    render json: @membership
  end

  def create
    binding.pry
  end

  def destroy
    binding.pry
  end
end
