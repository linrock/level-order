def fibonacci(n, cache = [])
  return n if n <= 1
  return cache[n] unless cache[n].nil?
  cache[n] = fibonacci(n - 1, cache) + fibonacci(n - 2, cache)
end
