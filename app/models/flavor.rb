class Flavor < ApplicationRecord
  has_many :flavor_likes
  has_many :tastings, through: :flavor_likes
end
