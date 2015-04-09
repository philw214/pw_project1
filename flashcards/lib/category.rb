class Category < ActiveRecord::Base
    has_many :cards, dependent: :destroy
    validates :category, presence: true

    def to_s
      return "#{id}. " + category
    end

    # def create_card
    #   card_attr = {}
    #   puts"Enter New Card Question:"
    #   card_attr[:question] = gets.chomp
    #   puts"Enter New Card Answer:"
    #   card_attr[:answer] = gets.chomp
    #   puts Category.all
    #   puts"Add Card to Category:"
    #   card_attr[:category_id] = gets.chomp.to_i
    #   self.cards.create(card_attr)
    # end
end

# indentation should match card.rb, other than that looks good
# try thinking alternatives to having a to_s method
