require 'active_record'
require_relative 'connection'
require_relative '../lib/card'
require_relative '../lib/category'


Card.destroy_all
Category.destroy_all


card = Card.create([{question:"What is 5 + 1?", answer: "6"}])

Category.create([{category:"Math"}])
Category.create([{category:"Science"}])
Category.create([{category:"Geography"}])

math = Category.find_by(category:"Math")
math.cards.create([{question:"question1?", answer: "answer1"}, {question:"question2", answer:"answer2"},
  {question:"question3", answer:"answer3"}])
