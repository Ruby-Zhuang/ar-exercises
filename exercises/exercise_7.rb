require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Exercise 7: Validations for both models
puts "Enter a store name:"
print "> "
store_name = $stdin.gets.chomp

# new_store = Store.create # For testing for multiple errors

new_store = Store.create(name: store_name, mens_apparel: true)

# Displays errors one on each line
puts new_store.errors.full_messages