# frozen_string_literal: true

##
# Calculate the number of points for Use of English part 4, Cambridge Advanced (CAE)
##

class Points
  def initialize(correct_answer)
    @correct_answer = correct_answer
  end
# calculates the number of points for one answer
  def calculate(answer)
    @correct_answer["2"].map {|version| version.join(" ") == answer["2"] ? 2 : 0}.reduce(:+) 
  end
end
