def maximum_subarray_sum(numbers)
  n = numbers.length
  max_sums = Array.new(n)
  max_sums[0] = max_sum = numbers[0]
  (1 .. n-1).each do |i|
    max_sums[i] = numbers[i]
    if max_sums[i-1] > 0
      max_sums[i] += max_sums[i-1]
    end
    max_sum = [max_sum, max_sums[i]].max
  end
  max_sum
end
