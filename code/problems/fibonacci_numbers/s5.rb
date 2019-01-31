require 'gmp'

def fibonacci(n)
  precision = [16, (0.8*n).to_i].max
  sqrt_5 = GMP::F.new(5, precision).sqrt
  phi = (sqrt_5 + 1) / 2
  GMP::Z.new(phi**n / sqrt_5)
end
