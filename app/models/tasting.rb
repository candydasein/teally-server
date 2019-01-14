class Tasting < ApplicationRecord
  belongs_to :user
  belongs_to :tea
  has_many :flavor_likes
end
