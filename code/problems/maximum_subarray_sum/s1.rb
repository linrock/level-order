def maximum_subarray_sum(numbers)
  n = numbers.length
  max_sum = 0
  (0 .. n-1).each do |i|
    sum = numbers[i]
    max_sum = [max_sum, sum].max
    (i+1 .. n-1).each do |j|
      sum += numbers[j]
      max_sum = [max_sum, sum].max
    end
  end
  max_sum
end
