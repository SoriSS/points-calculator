# frozen_string_literal: true

##
# Calculate the number of points for Use of English part 4, Cambridge Advanced (CAE)
#
# correct_answer is in the format "first part | second part"
# answer must have between three and six words
# answer is in the format "candidate submitted answer"
#
##

class Points
  def initialize(correct_answer, keyword, answer)
    @correct_answer = correct_answer.split("|").map {|e| e.strip.split}
    @keyword = keyword
    @answer = answer.downcase.split
  end
  
  def correct_answer
    @correct_answer
  end

  def keyword
    @keyword
  end

  def answer
    @answer
  end

  def right_size?
    word_number <= word_count_correct_answer
  end

  def has_keyword?
    answer.include?(@keyword)
  end
  
  def word_number
    answer.count
  end
  
  def points
    score = 0
    li = correct_answer[0].size - 1
    ri = correct_answer[1].size - 1
    rai = answer.size - 1
    left = []
    right = []
    
    if has_keyword? && right_size?
    # check the first half of the answer, from left to right
      (0..li).each_with_object(left) do |i|
        if correct_answer[0][i] == answer[i]
          left << true
        else
          left << false
        end
      left.count(true) == 2 ? score += 1 : score
      end
      # check the second half of the answer, from right to left
      (0..ri).each_with_object(right) do |i|
        if correct_answer[1][ri] == answer[rai] 
          right << true
        else
          right << false
        end
        ri -= 1
        rai -= 1
      end
      right.count(true) == 2 ? score += 1 : score
    else
      score
    end
  end

  private

  def word_count_correct_answer
    @correct_answer.split("|").join.split.count
  end
end