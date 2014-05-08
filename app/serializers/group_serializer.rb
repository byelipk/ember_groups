class GroupSerializer < ActiveModel::Serializer

  attributes :id, :name

  has_one :founder, embed: :id

  def user
    object.founder
  end
end
