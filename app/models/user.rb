# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :tastings
  has_many :flavors, through: :tastings

  # def favorite_flavors
  #   #:user[:flavors].each_with_object(Hash.new(0)) { |m,h| h[m] +=1 }.sort_by{ |k,v| v }

  #   # const userFlavors = this.props.user.flavors.map(flavor => flavor.name)
  #   # const userFlavorFrequency = {}

  #   # for (let i = 0; i < userFlavors.length; i++) {
  #   #   const num = userFlavors[i]
  #   #   userFlavorFrequency[num] = userFlavorFrequency[num] ? userFlavorFrequency[num] + 1 : 1
  #   # }

  #   # const userSortableFlavors = []
  #   # for (const flavor in userFlavorFrequency) {
  #   #   userSortableFlavors.push([flavor, userFlavorFrequency[flavor]])
  #   # }

  #   # const userSortedFavoriteFlavors = userSortableFlavors.sort((a, b) => b[1] - a[1]).slice(0, 5)
    
  #   # const userTop5 = userSortedFavoriteFlavors.flat()
  #   #   .filter(item => typeof item === 'string')
  #   #   .join(', ') 
  #   # console.log(userTop5) 
  # end

  # puts favorite_flavors
end
