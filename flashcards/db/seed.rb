require 'active_record'
require_relative 'connection'
require_relative '../lib/card'
require_relative '../lib/category'


Card.destroy_all
Category.destroy_all





Category.create([{category:"Geography"}])
Category.create([{category:"Science"}])


science = Category.find_by(category:"Science")
geography = Category.find_by(category:"Geography")

geography.cards.create([{question:"Redwoods, the world's tallest trees, are found in which state?", answer:"California"},
{question:"Where does the Missouri River begin?", answer:"Montana"}, {question:"Which continent has the most countries?", answer:"Africa"},
{question:"What is the capital of the Philippines?", answer:"Manila"},{question:"What other European country had French as an official language for over 600 years?", answer:"England"},
{question:"Which country contains more than 50% of the world's lakes?", answer:"Canada"}])

science.cards.create([{question:"What is the largest planet in our solar system?", answer: "Jupiter"},
{question:"Which prefix is often used with scientific terms to indicate that something is the same, equal or constant?", answer:"iso"},
{question:"What is the result of accumulated stress along the boundaries of lithospheric plates", answer:"earthquake"},
{question:""}])
