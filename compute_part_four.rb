# frozen_string_literal: true

##
# Calculate the number of points for Use of English part 4, Cambridge Advanced (CAE)
#
# correct_answer is in the format "first part | second part"
# key word must be included for the answer to be considered
# key word is in the format "key_word"
# answer is in the format "candidate submitted answer"
#
##
require './p_four.rb'

class Compute
  def initialize(correct_answers, keywords, answers)
    @correct_answers = correct_answers
    @keywords = keywords
    @answers = answers
  end


end