RSpec.describe 'fibonacci number problem' do
  let(:numbers) do
    [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
  end
  let(:fib_200) do
    280571172992510140037611932413038677189525
  end
  let(:fib_1000) do
    43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875
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
      expect(fibonacci(1000)).to eq(fib_1000)
    end
  end

  context 'dynamic programming' do
    before { require 'fibonacci_numbers/s3.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
      expect(fibonacci(1000)).to eq(fib_1000)
    end
  end

  context 'iterative' do
    before { require 'fibonacci_numbers/s4.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
      expect(fibonacci(1000)).to eq(fib_1000)
    end
  end

  context "Binet's formula" do
    before { require 'fibonacci_numbers/s5.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
      expect(fibonacci(1000)).to eq(fib_1000)
    end
  end

  context "Fast doubling" do
    before { require 'fibonacci_numbers/s6.rb' }

    it 'calculates fibonacci numbers efficiently' do
      numbers.each_with_index do |number, i|
        expect(fibonacci(i)).to eq(number)
      end
      expect(fibonacci(200)).to eq(fib_200)
      expect(fibonacci(1000)).to eq(fib_1000)
    end
  end
end
