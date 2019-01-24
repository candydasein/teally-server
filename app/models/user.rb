# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :tastings
  has_many :flavors, through: :tastings
end
