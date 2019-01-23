def fibonacci(n)
  numbers = Array.new(n + 1)
  numbers[0] = 0
  numbers[1] = 1
  (2 .. n).each do |i|
    numbers[i] = numbers[i - 1] + numbers[i - 2]
  end
  numbers[n]
end
