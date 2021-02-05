# frozen_string_literal: true

##
# Calculate the number of points for Use of English part 4, Cambridge Advanced (CAE)
##

class Points
  def initialize(correct_answers)
    @correct_answers = correct_answers
  end
# calculates the number of points for one answer
  def calculate(answers)
    if extra_words?
      @correct_answers.each_with_object([]) { |(k, v), arr|
        arr << v.select {|e| answers[k].include?(e.flatten.join)}  
      }.flatten.count
    else
      #to be filled in
    end
  end

  private

  def answers_array(answers)
    answers.split
  end

  def extra_words?
    !answers_array(answers).all? {|e| correct_answers.flatten.join.include?(e) }
  end
end
