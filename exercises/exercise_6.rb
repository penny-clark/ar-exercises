require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Egg", last_name: "Eggerson", hourly_rate: 60)
@store1.employees.create(first_name: "Hello", last_name: "There", hourly_rate: 60)
@store1.employees.create(first_name: "Debby", last_name: "Debson", hourly_rate: 60)
@store1.employees.create(first_name: "Brett", last_name: "Bretterson", hourly_rate: 60)

@store1.employees.create(first_name: "Archie", last_name: "Andrews", hourly_rate: 60)
@store1.employees.create(first_name: "Veronica", last_name: "Lodge", hourly_rate: 60)
@store1.employees.create(first_name: "Betty", last_name: "Cooper", hourly_rate: 60)