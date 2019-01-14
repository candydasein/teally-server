class FlavorLikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :flavor
  has_one :tasting
end
