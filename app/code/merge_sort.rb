# merges two sorted arrays into one sorted array
def merge(left_values, right_values)
  sorted = []
  while left_values.length > 0 and right_values.length > 0
    if left_values[0] < right_values[0]
      sorted << left_values.shift
    else
      sorted << right_values.shift
    end
  end
  sorted + left_values + right_values
end

def merge_sort(values)
  n = values.length
  return values if n == 1
  i_mid = (n - 1) / 2
  left_values = values[0 .. i_mid]
  right_values = values[i_mid + 1 .. -1]
  merge(merge_sort(left_values), merge_sort(right_values))
end
