class Answer < ActiveRecord::Base
  belongs_to :card
  validates :answer, presence: true
  validates :answer, length: {minimum: 2}
end
