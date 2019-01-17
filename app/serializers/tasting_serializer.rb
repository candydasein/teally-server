class TastingSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_one :user
  has_one :tea
  has_many :flavors
end
