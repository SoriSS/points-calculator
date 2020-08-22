# frozen_string_literal: true

##
# Find the average of all the numbers in an array
##

class Points
  def initialize(correct_answer)
    @correct_answer = correct_answer
  end

  def calculate(answer)
    @correct_answer.join(" ") == answer ? 2 : 0
  end
end
