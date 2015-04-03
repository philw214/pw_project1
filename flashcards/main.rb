require 'active_record'
require 'pg'
require 'pry'
require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/category'


def play
 correct = []
 incorrect = []
 puts"Select Category"
 puts Category.all
 choice = gets.chomp.to_i

 cat = Category.find_by(id:choice)

 cat.cards.each do |question, answer|
   puts question
   puts"Your answer:"
   ans = gets.chomp
   if ans == question.answer
     puts "Correct!"
     correct << 1
   else
     puts"WRONG!"
     puts"Correct answer: " + question.answer
     incorrect << 1
   end
 end
 puts"You answered #{correct.count} correctly and #{incorrect.count} incorrectly."
end


def main_menu
puts"
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
 Welcome to Flashcard Trivia!
     -Choose an option-
 Menu:
1.View Flashcards by Category
2.Create New Category
3.Create New Flashcard
4.Edit A Flashcard
5.Delete A Flashcard
6.Delete A Category
7.Play!
0.Exit
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
return gets.chomp.to_i
end

def view
  puts Category.all
  puts"Choose A Category to View Cards"
  num = gets.chomp.to_i
  category = Category.find_by(id:num)
  puts category.cards
end

def create_category
  category_attr = {}
  puts"Enter New Card Category:"
  category_attr[:category] = gets.chomp
  return category_attr
end

def create_card
  card_attr = {}
  puts"Enter New Card Question:"
  card_attr[:question] = gets.chomp
  puts"Enter New Card Answer:"
  card_attr[:answer] = gets.chomp
  puts Category.all
  puts"Add Card to Category:"
  card_attr[:category_id] = gets.chomp.to_i
  return card_attr
end

def edit_card
  puts Card.all
  puts"Select A Card (Number) To Edit:"
  card_num = gets.chomp.to_i
  edit_card = Card.find_by(id:card_num)
  puts"Update Card Question:"
  edit_card[:question] = gets.chomp
  puts"Update Card Answer:"
  edit_card[:answer] = gets.chomp
  edit_card.save
end

def delete_card
  puts Card.all
  puts"Select Card (number) For Removal:"
  num = gets.chomp.to_i
  card = Card.find_by(id:num)
  card.destroy
end

def delete_category
  puts Category.all
  puts"Select Category (number) For Removal:"
  num = gets.chomp.to_i
  category = Category.find_by(id:num)
  category.destroy
end

loop do
 user_choice = main_menu

 case user_choice

  when 1
    view
  when 2
    Category.create(create_category)
  when 3
    Card.create(create_card)
  when 4
    edit_card
  when 5
    delete_card
  when 6
    delete_category
  when 7
    play
  when 0
    break
  end
end
