class Category < ActiveRecord::Base
    has_many :cards, dependent: :destroy
    validates :category, presence: true

end
