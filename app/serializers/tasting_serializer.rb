class TastingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :tea
  has_many :flavors
end
