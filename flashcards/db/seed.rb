require 'active_record'
require_relative 'connection'
require_relative '../lib/answer'
require_relative '../lib/card'
require_relative '../lib/category'


Card.destroy_all
Answer.destroy_all
Category.destroy_all


cards = Card.create([{question:"What is 5 + 1?"},
{question: "How many angles does a pentagon have?"}])
