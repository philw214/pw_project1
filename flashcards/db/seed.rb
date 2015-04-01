require 'active_record'
require_relative 'connection'
require_relative '../lib/card'
require_relative '../lib/category'


Card.destroy_all
Category.destroy_all


card = Card.create([{question:"What is 5 + 1?", answer: "6"}])

Category.create([{category:"Math"},{category:"Science"},{category:"Geography"}])
