class Tasting < ApplicationRecord
  belongs_to :user
  belongs_to :tea
  has_many :flavor_likes
  has_many :flavors, through: :flavor_likes
end
