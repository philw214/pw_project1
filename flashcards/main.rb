require 'active_record'
require 'pg'
require 'pry'
require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/category'



















def main_menu
puts"
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
 Welcome to Flashcard Trivia!
     -Choose an option-
 Menu:
1.View All Categories/Flashcards
2.Create New Flashcard
3.Edit A Flashcard
4.Delete A Flashcard
5.View Score/Recent Answers
0.Exit
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
return gets.chomp.to_i
end

# def view
#   puts"View:
#   1. Categories
#   2. All Cards"
#
# end


def create_card

  puts"Enter New Card Category:"
  new_cat = Category.new do |cat|
  cat.category = gets.chomp
  end

  new_card = Card.new do |card|
  puts"Enter New Card Question:"
  card.question = gets.chomp
  puts"Enter New Card Answer:"
  card.answer = gets.chomp
  end

  new_cat.save
  new_card.save

end


def edit_card
  puts Card.all
  puts"Select A Card (Number) To Edit:"
  num = gets.chomp.to_i
  edit_card = Card.find_by(id:num)
  puts"Update Card Question:"
  q_new = gets.chomp
  edit_card.update(question:q_new)
  puts"Update Card Answer:"
  a_new = gets.chomp
  edit_card.update(answer:a_new)

  edit_card.save
end


def delete_card
  puts Card.all
  puts"Select Card (number) For Removal:"
  num = gets.chomp.to_i
  card = Card.find_by(id:num)
  card.destroy
end

loop do
 user_choice = main_menu

 case user_choice

  when 1
      puts"View:
       1. Categories
       2. All Cards"
       num = gets.chomp.to_i

       if num == 1
         puts Card.all
       else
         puts Category.all
       end
  when 2
    create_card
  when 3
    edit_card
  when 4
    delete_card
  when 0
    break
  end
end
