describe Calculator do

  let(:calculator){ Calculator.new}

  describe '#initialize' do
    # stuff here
  end

  describe '#add' do
    it 'raises an ArgumentError with 0 arguments' do
      expect(calculator.add).to raise_error(ArgumentError)
    end

    it 'returns the sum of its arguments' do
      expect(calculator.add(1, 2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'raises an ArgumentError with 0 arguments' do
      expect(calculator.subtract).to raise_error(ArgumentError)
    end

    it 'returns the sum of its arguments' do
      expect(calculator.subtract(2, 1)).to eq(1)
    end
  end

  describe '#multiply' do
    it 'returns the sum of its arguments' do
      expect(calculator.multiply(2, 2)).to eq(4)
    end
  end

  describe '#divide' do
    it 'returns the sum of its arguments' do
      expect(calculator.divide(4, 2)).to eq(2)
    end
  end

  describe '#pow' do
    it 'returns the sum of its arguments' do
      expect(calculator.pow(3, 2)).to eq(9)
    end
  end

  describe '#sqrt' do
    it 'returns the sum of its argument' do
      expect(calculator.sqrt(9)).to eq(3)
    end
  end

  describe '#memory' do
    # stuff here
  end

  describe '#memory=' do
    it 'actually sets the variable' do
      test_mem = 8

      calculator.memory = test_mem
      expect(calculator.memory).to eq(test_mem)
    end
  end

  describe '#stringify' do
    # stuff here
  end

end
