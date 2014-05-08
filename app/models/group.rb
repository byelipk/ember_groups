# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  private    :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Group < ActiveRecord::Base
  belongs_to :founder, class_name: "User", foreign_key: "user_id"
  has_many :memberships
  has_many :members, through: :memberships, source: :user

  after_create :add_founder_as_member

  private
  
  def add_founder_as_member
    self.memberships.create(user_id: self.user_id)
  end
end
