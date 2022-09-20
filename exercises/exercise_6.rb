require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Egg", last_name: "Eggson", hourly_rate: 20)
@store1.employees.create(first_name: "Cheesy", last_name: "Bread", hourly_rate: 650)
@store1.employees.create(first_name: "Popo", last_name: "Pepe", hourly_rate: 30)
@store1.employees.create(first_name: "Deckard", last_name: "Cain", hourly_rate: 10)

@store2.employees.create(first_name: "Filbert", last_name: "Gumgee", hourly_rate: 15)
@store2.employees.create(first_name: "Chicory", last_name: "Tellbetheny", hourly_rate: 190)
@store2.employees.create(first_name: "Alex", last_name: "John", hourly_rate: 100)