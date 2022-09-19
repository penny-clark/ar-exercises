require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: 1)
p @store1
@store2 = Store.find_by(id: 2)
p @store2
@store1.name = "Bunny's Big Ol' Store"
p @store1
