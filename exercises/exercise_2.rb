require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

# Load the first store from the database and assign it to @store1
@store1 = Store.find(1)

# Load the second store from the database and assign it to @store2
@store2 = Store.find(2)

# Update the name of the first store and save the changes to the database
@store1.name = "New Burnaby Store"
@store1.save

puts "Updated store name: #{@store1.name}"