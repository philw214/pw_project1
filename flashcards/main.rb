require 'active_record'
require_relative 'db/seed'
require 'pg'
require 'pry'
require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/answer'
require_relative 'lib/category'



def main_menu
puts"
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 Welcome to Flashcard Trivia!
     -Choose an option-
 Menu:
1.View All Flashcards
2.Create New Flashcard
3.Edit A Flashcard
4.Delete A Flashcard
5.View Score/Recent Answers
0.Exit

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
return gets.chomp.to_i
end

def create_card
end



user_choice = main_menu

case user_choice

when 1
  puts Card.all
end
