class Question < ApplicationRecord

  validates :contens, presence: true
  validates :answer, presence: true

  def correct?(input_answer)
    adjust_format(answer) == adjust_format(input_answer)
  end

  private
  def adjust_format(str)
    str = convert_to_word(str)
    str.downcase.gsub(/\s+|-/, "")
  end

  def convert_to_word(str)
    return str.to_i.to_words if numric?(str)
    str
  end

  def numric?(str)
    !!(str.to_s =~ /^[0-9]+$/)
  end

end
