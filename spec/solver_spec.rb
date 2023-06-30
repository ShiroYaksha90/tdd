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
  describe "#fizzbuzz" do
    it 'When N is divisible by 3, return "fizz"' do
      num = Solver.new
      expect(num.fizzbuzz(3)).to eql 'fizz'
    end
    it 'When N is divisible by 5, return "buzz"' do
      num = Solver.new
      expect(num.fizzbuzz(5)).to eql 'buzz'
    end
    it 'When N is divisible by 3 and 5, return "fizzbuzz"' do
      num = Solver.new
      expect(num.fizzbuzz(30)).to eql 'fizzbuzz'
    end
    it ' return N as a string' do
      num = Solver.new
      expect(num.fizzbuzz(7)).to eql '7'
    end
  end
end
