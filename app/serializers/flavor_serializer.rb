class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_parent, :second_parent
end
