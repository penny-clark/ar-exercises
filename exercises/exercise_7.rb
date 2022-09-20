require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 39 }
  validates :hourly_rate, numericality: { less_than: 201 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
end

Employee.create(first_name: "Albert", last_name: "Vampire Finkly", hourly_rate: 200, store_id: 5)
Store.create(name: "Bebe", annual_revenue: 20, mens_apparel: true, womens_apparel: true )

def create_store
  print 'Enter a store name: '
  store_name = gets.chomp
  new_store = Store.create(name: store_name)
  new_store.valid?
  if new_store.errors
    puts "ERROR:"
    new_store.errors.each {|error| puts error.full_message}
  end
end
create_store
