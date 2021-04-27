require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40 }
  validates :hourly_rate, numericality: { less_than: 200 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :store_must_have_one_type_of_apparel
  
  def store_must_have_one_type_of_apparel
    if ((mens_apparel.present? == false) && (womens_apparel.present? == false))
      errors.add(:mens_apparel, "Must sell at least one type of clothing")
      errors.add(:womens_apparel, "Must sell at least one type of clothing")
    end
  end

end

def make_new_store
  puts "What is the name of the store you want to add?"
  answer = $stdin.gets.chomp
  newstore = Store.create(name: answer)
  newstore.valid?
  newstore.errors.messages.each do | key, error |
    puts "#{key}: #{error}"
  end
end

make_new_store