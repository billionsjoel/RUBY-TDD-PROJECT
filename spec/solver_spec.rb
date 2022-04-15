require_relative('../solver')

describe Solver do
  before(:all) do
    @solver = Solver.new
  end

  context 'Test for factorial method' do
    it 'checks if the factorial of 6 is 720' do
      num = 6
      result = @solver.factorial(num)
      expect(result).to eq(720)
    end

    it 'checks that the factorial of 0 = 1' do
      num = 0
      result = @solver.factorial(num)
      expect(result).to eq(1)
    end

    it 'raises an exception when the factorial number is less than 0' do
      num = -1
      expect { @solver.factorial(num) }.to raise_error(RuntimeError)
    end
  end

  context 'tests for the reverse method' do
    it 'checks if the method reverses a string. Microverse should return esrevorcim' do
      word = 'microverse'
      reversed = @solver.reverse(word)
      expect(reversed).to eq('esrevorcim')
    end
  end

  context 'test for the fizzbuzz method' do
    it 'checks if a num is divisible by 3 and 5 then returns fizzbuzz' do
      num = 15
      result = @solver.fizzbuzz(num)

      expect(result).to eq 'fizzbuzz'
    end

    it 'checks if a num is divisible by 3 then returns fizz' do
      num = 12
      result = @solver.fizzbuzz(num)

      expect(result).to eq 'fizz'
    end

    it 'checks if a number is divisible by 5 then returns buzz' do
      num = 10
      result = @solver.fizzbuzz(num)

      expect(result).to eq 'buzz'
    end

    it 'checks for any other case and returns number as string' do
      num = 7
      result = @solver.fizzbuzz(num)

      expect(result).to eq num.to_s
    end
  end
end
