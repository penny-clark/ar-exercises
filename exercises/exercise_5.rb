require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "total from all stores:"
puts Store.sum(:annual_revenue)
puts "average income of all stores:"
puts Store.sum(:annual_revenue) / Store.count
@stores_over_mil = Store.where(annual_revenue: 1000000..)
puts "Number of stores that make over a mil annually: #{@stores_over_mil.count}"

