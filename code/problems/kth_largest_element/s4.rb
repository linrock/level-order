def kth_largest_element(values, k)
  n = values.length
  quickselect(values, 0, n-1, n-k)
end

def quickselect(values, low, high, i_target)
  return values[low] if low == high
  i = partition(values, low, high)
  if i == i_target
    values[i]
  elsif i < i_target
    quickselect(values, i + 1, high, i_target)
  else
    quickselect(values, low, i - 1, i_target)
  end
end

def partition(values, low, high)
  i_pivot = (low + (high - low)*rand).to_i
  pivot = values[i_pivot]
  values[high], values[i_pivot] = values[i_pivot], values[high]
  j = low
  (low .. high).each do |i|
    if values[i] < pivot
      values[i], values[j] = values[j], values[i]
      j += 1
    end
  end
  values[j], values[high] = values[high], values[j]
  j
end
