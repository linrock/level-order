def maximum_subarray_sum(numbers)
  n = numbers.length
  max_sum = sum = numbers[0]
  (1 .. n-1).each do |i|
    if sum + numbers[i] > sum
      sum += numbers[i]
    else
      sum = numbers[i]
    end
    max_sum = [max_sum, sum].max
  end
  max_sum
end
