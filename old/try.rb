correct_answer = {"1" => [["when it is", "when it's"],["raining there"]], "2" => [["there is", "there's"], ["a car"]]}
answer = {"1" => "when it is raining there", "2" => "there's a car"}
def calculate(answer)
  correct_answer = {"1" => [["when it is", "when it's"],["raining there"]], "2" => [["there is", "there's"], ["a car"]]}
  for correct_answer.length
  correct_answer.each_with_object([]) {|(k, v), obj|
    obj << v.each_with_object([]) {|version, arr| arr << version.each_with_index {|e, i| e[i].include?(answer[k])}}
  }

def extra_words?(answer)
  arr = answer.split
  arr.all? {|e| correct_answers.flatten.join.include?(e) }
end

end