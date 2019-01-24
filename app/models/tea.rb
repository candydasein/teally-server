class Tea < ApplicationRecord
  has_many :tastings
  has_many :flavors, through: :tastings
end
