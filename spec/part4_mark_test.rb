# frozen_string_literal: true

##
# Calculate marks for Use of English part 4 CAE
##

require './part4_mark.rb'

describe Points do
  context 'when answer is correct and there is one version' do
    it "should calculate the number of points" do
      compare = Points.new({"1" => [["when it should","rain there"]], "2" => [["there is", "a car"]]})
      answer = {"1" => "when it should rain there", "2" => "there is a car"}
      result = compare.calculate(answer)
      expect(result).to eq 2
    end
  end

  context 'when answer is incorrect and there is one version' do
    it "should calculate the number of points" do
      compare = Points.new({"1" => [["when it should","rain there"]], "2" => [["there is", "a car"]]})
      answer = {"1" => "when it should there", "2" => "there a car"}
      result = compare.calculate(answer)
      expect(result).to eq 0
    end
  end

  context 'when answer is correct and there are two versions' do
    it "should calculate the number of points" do
      compare = Points.new({"1" => [["when it is","raining there"],["when it's","raining there"]], "2" => [["there is", "a car"], ["there's", "a car"]]})
      answer = {"1" => "when it's raining there", "2" => "there's a car"}
      result = compare.calculate(answer)
      expect(result).to eq 2
    end
  end
end


