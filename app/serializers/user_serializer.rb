class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :email

  has_many :groups, embed: :ids, include: true
  has_many :memberships, embed: :ids, include: true
end
