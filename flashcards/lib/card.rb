class Card < ActiveRecord::Base
  belongs_to :category
  validates :question, presence: true
  validates :answer, presence: true

def to_s
  return "#{id}. " + question
end

end
