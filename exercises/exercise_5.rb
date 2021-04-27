require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "----Total revenue for all stores----"
puts Store.sum("annual_revenue")

puts "----Average revenue per store----"
puts (Store.sum("annual_revenue") / Store.all.count)

puts "----Number of stores generating more than a mil----"
puts Store.where("annual_revenue > 1000000").count