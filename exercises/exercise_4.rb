require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

# Create 3 new stores using the create method
Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Use the where method to fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output the name and annual revenue of each men's store
puts "Men's stores:"
@mens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end

# Use the where method to fetch stores that carry women's apparel and have less than $1M in annual revenue
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# Output the name and annual revenue of each women's store
puts "Women's stores with less than $1M in annual revenue:"
@womens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end