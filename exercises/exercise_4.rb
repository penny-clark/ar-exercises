require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )
@mens_stores = Store.where(mens_apparel: true)
puts "--- men's ---"
@mens_stores.each{|store| puts "STORE NAME: #{store.name} REVENUE: $#{store.annual_revenue}"}
@womens_stores_under_mil = Store.where(womens_apparel: true, annual_revenue: ...1000000)
puts "--- women's under 1mil ---"
@womens_stores_under_mil.each{|store| puts "STORE NAME: #{store.name} REVENUE: $#{store.annual_revenue}"}
