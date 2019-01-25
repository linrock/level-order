RSpec.describe 'fibonacci number problem' do
  let(:numbers) do
    [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
  end
  let(:fib_200) do
    280571172992510140037611932413038677189525
  end

  context 'recursive' do
    before { require 'fibonacci_numbers/s1.rb' }

    it 'calculates fibonacci numbers' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
    end
  end

  context 'recursive' do
    before { require 'fibonacci_numbers/s2.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
    end
  end

  context 'dynamic programming' do
    before { require 'fibonacci_numbers/s3.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
    end
  end

  context 'iterative' do
    before { require 'fibonacci_numbers/s4.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
    end
  end
end
