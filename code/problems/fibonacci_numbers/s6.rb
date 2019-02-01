def fibonacci(n)
  tuples = lambda do |n|
    return [0, 1] if n == 0
    a, b = tuples.call(n / 2)
    c = a * (b * 2 - a)
    d = a ** 2 + b ** 2
    if n % 2 == 0
      [c, d]
    else
      [d, c + d]
    end
  end
  tuples.call(n).first
end
