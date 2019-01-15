class Tea < ApplicationRecord
  has_many :tastings
  has_many :flavor_likes, through: :tastings
end
