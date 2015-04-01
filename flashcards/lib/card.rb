class Card < ActiveRecord::Base
  belongs_to :category
  # validates :question, presence: true
  # validates :question, length: {minimum: 8}
  # validates :answer, presence: true
  # validates :answer, length: {minimum: 2}
#
def to_s
  return "#{id}. " +  question
end

end
