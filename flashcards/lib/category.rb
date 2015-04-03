class Category < ActiveRecord::Base
    has_many :cards, dependent: :destroy
    validates :category, presence: true

    def to_s
      return "#{id}. " + category
    end

end
