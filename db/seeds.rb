# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Flavor.transaction do
  CSV.foreach(Rails.root + 'lib/seeds/flavors.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |flavor_row|
    flavor = flavor_row.to_hash
    Flavor.create flavor unless Flavor.exists? flavor
  end
end

Tea.transaction do
  CSV.foreach(Rails.root + 'lib/seeds/teas.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |tea_row|
    tea = tea_row.to_hash
    Tea.create tea unless Tea.exists? tea
  end
end

