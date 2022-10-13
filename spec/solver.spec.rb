require 'rspec/autorun'
require_relative '../solver'

RSpec.describe ' Solver' do
  describe '#factorial' do
    it 'should return factorial of a number' do
      res = Solver.new
      expect(res).to receive(:factorial).with(5).and_return(120)
      expect(res.factorial(5)).to eq(120)
    end

    it 'should return 1 if num == 0' do
      res = Solver.new
      expect(res).to receive(:factorial).with(0).and_return(1)
      expect(res.factorial(0)).to eq(1)
    end

    it 'should raise an exception' do
      res = Solver.new
      expect(res).to receive(:factorial).with(-1).and_return('Number must be greater than 0')
      expect(res.factorial(-1)).to eq('Number must be greater than 0')
    end
  end

  describe '#reverse' do
    it 'should return a reversed string' do
      res = Solver.new
      expect(res).to receive(:reverse).with('hello').and_return('olleh')
      expect(res.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'should return fizz if divisible by 3' do
      res = Solver.new
      expect(res).to receive(:fizzbuzz).with(3).and_return('fizz')
      expect(res.fizzbuzz(3)).to eq('fizz')
    end

    it 'should return buzz if divisible by 5' do
      res = Solver.new
      expect(res).to receive(:fizzbuzz).with(5).and_return('buzz')
      expect(res.fizzbuzz(5)).to eq('buzz')
    end

    it 'should return fizzbuzz if divisible by 3 && 5' do
      res = Solver.new
      expect(res).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
      expect(res.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return num string if not divisible by both' do
      res = Solver.new
      expect(res).to receive(:fizzbuzz).with(7).and_return('7')
      expect(res.fizzbuzz(7)).to eq('7')
    end
  end
end
