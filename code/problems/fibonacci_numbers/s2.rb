def fibonacci(n, cache = {})
  return n if n <= 1
  return cache[n] if cache.key?(n)
  cache[n] = fibonacci(n - 1, cache) + fibonacci(n - 2, cache)
end
