# frozen_string_literal: true

##
# Calculate marks for Use of English part 4 CAE
##

require './part4_mark.rb'

describe Points do
  context 'when answer is correct and there is one version' do
    it "should calculate the number of points" do
      compare = Points.new(["when it should","rain there"])
      answer = "when it should rain there"
      result = compare.calculate(answer)
      expect(result).to eq 2
    end
  end

  
end


