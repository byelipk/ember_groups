class GroupSerializer < ActiveModel::Serializer

  attributes :id, :name

  has_one :founder, embed: :id
  has_many :memberships, embed: :ids, include: true
end
