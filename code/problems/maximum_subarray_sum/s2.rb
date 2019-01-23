def maximum_subarray_sum(numbers)
  max_sum(numbers, 0, numbers.length-1)
end

def max_sum(numbers, low, high)
  return numbers[low] if low >= high
  mid = (low + high) / 2
  [
    max_sum(numbers, low, mid),
    max_sum(numbers, mid + 1, high),
    cross_sum(numbers, low, high),
  ].max
end

def cross_sum(numbers, low, high)
  mid = (low + high) / 2
  max_sum = sum = numbers[mid]
  (mid - 1).downto(low).each do |i|
    sum += numbers[i]
    max_sum = [max_sum, sum].max
  end
  sum = max_sum
  (mid + 1).upto(high).each do |i|
    sum += numbers[i]
    max_sum = [max_sum, sum].max
  end
  max_sum
end
