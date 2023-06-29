# frozen_string_literal: true

require './solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'Returns the factorial a given positive integer' do
      fact = Solver.new
      expect(fact.factorial(0)).to eql 1
      expect(fact.factorial(1)).to eql 1
      expect(fact.factorial(5)).to eql 120
    end

    it "Raises an error if number given is negative" do
        negative = Solver.new
        expect{negative.factorial(-3)}.to raise_error(ArgumentError)
    end
  end

  describe "#reverse" do
  it "Returns a reversed string" do
    str = Solver.new
    expect(str.reversed('hello')).to eql 'olleh'
  end
end
end
