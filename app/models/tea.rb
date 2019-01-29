class Tea < ApplicationRecord
  #require 'facets'
  

  has_many :tastings
  has_many :flavors, through: :tastings
  
  def favorite_flavors
    
    flavor_names = flavors.map { |flavor| flavor.name }
    # puts flavor_names
    #Tea[:flavors].frequency.sort_by(&:last).reverse.flatten.keep_if { | item | item.is_a? String }
    #pull out just the names first to iterate over them
    flavor_names.each_with_object(Hash.new(0)) do |tea_flavor, tea_flavors_with_count| 
      tea_flavors_with_count[tea_flavor] += 1
    end 
     .sort_by{ |k, v| v }.reverse.flatten
     .keep_if { | item | item.is_a? String }
  
  end 

end
