class Card < ActiveRecord::Base
  has_one :answer, dependent: :destroy
  belongs_to :category
  validates :question, presence: true
  validates :question, length: {minimum: 8}
end
