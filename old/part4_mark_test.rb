# frozen_string_literal: true

##
# Calculate marks for Use of English part 4 CAE
##

require './part4_mark.rb'

describe Points do
  before(:context) do
    correct_answers = {
      first: [["when it is "],["when it's "],[" raining there"]],
      second: [["there is "], ["there's "], [" a car"]],
      third: [["she has "], ["she's "], [" buying the onions"]],
    }
    @compare = Points.new(correct_answers)
  end
# the first test is broken - it finds the first half as being correct, despite being wrong
  context 'when first option is correct out of two for the first half' do
    it "should calculate the number of points" do
      answers = {
        first: "when it is raining there",
        second: "there is a car",
        third: "ssdshe's doiia buying the onionsssss"
        }
      result = @compare.calculate(answers)
      expect(result).to eq 6
    end
  end

  context 'when second option is correct out of two for the first half' do
    it "should calculate the number of points" do
      answers = {
        first: "when it's raining there",
        second: "there is a car",
        third: ""
        }
      result = @compare.calculate(answers)
      expect(result).to eq 4
    end
  end

  context 'when first half is wrong' do
    it "should calculate the number of points" do
      answers = {
        first: "when it raining there",
        second: "there is a car",
        third: ""
        }
      result = @compare.calculate(answers)
      expect(result).to eq 3
    end
  end

  context 'when first answer is completely wrong' do
    it "should calculate the number of points" do
      answers = {
        first: "when it raining",
        second: "there is a car",
        third: ""
        }
      result = @compare.calculate(answers)
      expect(result).to eq 2
    end
  end

  context 'when first answer is completely wrong and first half of the second answer is wrong' do
    it "should calculate the number of points" do
      answers = {
        first: "when it raining",
        second: "there a car",
        third: ""
        }
      result = @compare.calculate(answers)
      expect(result).to eq 1
    end
  end

  context 'when both answers are completely wrong' do
    it "should calculate the number of points" do
      answers = {
        first: "when it raining",
        second: "there a car there",
        third: ""
        }
      result = @compare.calculate(answers)
      expect(result).to eq 1
    end
  end
end
