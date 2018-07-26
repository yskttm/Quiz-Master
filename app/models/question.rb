class Question < ApplicationRecord

  validates :contens, presence: true
  validates :answer, presence: true

  def correct?(input_answer)
    answer == input_answer
  end

end
