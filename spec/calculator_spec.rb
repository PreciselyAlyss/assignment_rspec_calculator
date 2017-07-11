require_relative '../lib/calculator.rb'
require 'spec_helper'

describe Calculator do

  let(:calculator) { described_class.new }

##
#  calculator.each do |test|
#    describe "#{test}" do
#      it 'raises an ArgumentError with 0 arguments' do
#        expect { calculator.send(:test) }.to raise_error(ArgumentError)
#      end
#    end
#  end

  describe '#add' do
    it 'returns the sum of its positive whole arguments' do
      expect(calculator.add(1, 2)).to eq(3)
    end

    it 'properly handles negative numbers' do
      expect(calculator.add(-1,0)).to eq(-1)
    end
  end

  describe '#subtract' do
    it 'returns the sum of its postive whole arguments' do
      expect(calculator.subtract(2, 1)).to eq(1)
    end

    it 'properly handles negative numbers' do
      expect(calculator.subtract(4,-2)).to eq(6)
    end

    it 'returns the sum of its positive float arguments' do
      expect(calculator.subtract(4, 2.5)).to eq(1.5)
    end
  end

  describe '#multiply' do
    it 'returns the sum of its positive whole arguments' do
      expect(calculator.multiply(2, 2)).to eq(4)
    end
  end

  describe '#divide' do
    it 'returns the sum of its positive whole arguments' do
      expect(calculator.divide(4, 2)).to eq(2)
    end

    it 'returns an argumenterror if attempting to divide by 0' do
      expect { calculator.divide(4, 0) }.to raise_error(ArgumentError)
    end
  end

  describe '#pow' do
    it 'returns the sum of its positive whole arguments' do
      expect(calculator.pow(3, 2)).to eq(9)
    end

    it 'properly handles negative numbers' do
      expect(calculator.pow(-2, 2)).to eq(4)
    end

    it 'returns the sum of its positive float arguments' do
      expect(calculator.pow(1.5, 2)).to eq(2.25)
    end
  end

  describe '#sqrt' do
    it 'returns the sum of its positive argument' do
      expect(calculator.sqrt(9)).to eq(3)
    end

    it 'returns error for negative input' do 
      expect { calculator.sqrt(-2) }.to raise_error(ArgumentError)
    end
  end

  describe '#memory' do
    it 'returns nil when memory has not been set' do
      expect(calculator.memory).to eq(nil)
    end
  end

  describe '#memory=' do
    it 'actually sets the variable' do
      test_mem = 8

      calculator.memory = test_mem
      expect(calculator.memory).to eq(test_mem)
    end
  end
end
