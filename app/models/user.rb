class User < ActiveRecord::Base
  has_many :groups
  has_many :memberships
  has_many :working_groups, through: :memberships, source: :group

  def create_group(attrs={})
    self.groups.create(attrs)
  end

  def join_group!(group)
    self.memberships.create(group_id: group.id)
  end

  def leave_group!(group)
    self.memberships.where(group_id: group.id).destroy
  end
end
