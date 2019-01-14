class TeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :family, :info, :country, :picture
end
