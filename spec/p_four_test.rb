require './p_four.rb'

describe Points do
  before(:context) do
    correct_answers = {
      first: ["when it is | raining there", "raining", "when it's | raining there"],
      second: ["there is | a car", "car", "there's | a car"],
      third: ["she has | done this", "done", "she's | done this", "she has | done that", "she's | done that"],
    }
    @compare = Points.new(correct_answers)
  end
end
context 'when there is only one answer and the string has only white spaces between words' do
  it "should calculate the number of points" do
    to_compare = ["when it's | raining there", "raining", "when it's raining"]
    compare = Points.new(to_compare)
    points = compare.points
    expect(points).to eq 2
  end
end
