class MembershipSerializer < ActiveModel::Serializer
  attributes :id

  has_one :user, embed: :id
  has_one :group, embed: :id
end
