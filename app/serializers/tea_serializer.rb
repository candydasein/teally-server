class TeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :family, :info, :country, :picture
  has_many :tastings
  has_many :flavors
end
