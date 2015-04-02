require 'active_record'
require 'pg'
require 'pry'
require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/category'




def play
# puts"Select Play Type:
#     1. By Category"
#     num = gets.chomp.to_i
#      if num == 1
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
      puts "right"
      correct << 1
    else
    puts question.answer
      puts"wrong"
      incorrect << 1
    end

  end

    puts"you got #{correct.count} correct and #{incorrect.count} incorrect."



end















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
5.Play!
0.Exit
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
return gets.chomp.to_i
end

 def view
   puts"View:
   1. All Cards
   2. Categories"
   num = gets.chomp.to_i

   if num == 1
     puts Card.all
   else
     puts Category.all
   end
 end


def create_card

  puts"Enter New Card Category:"
  new_cat = Category.new do |cat|
    puts Category.all
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
    view
  when 2
    create_card
  when 3
    edit_card
  when 4
    delete_card
  when 5
    play
  when 0
    break
  end
end
