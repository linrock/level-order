def quickselect(values, low, high, kth_smallest)
  return values[low] if low == high
  i = partition(values, low, high)
  if i + 1 == kth_smallest
    values[i]
  elsif i + 1 < kth_smallest
    quickselect(values, i + 1, high, kth_smallest)
  else
    quickselect(values, low, i - 1, kth_smallest)
  end
end

def partition(values, low, high)
  i_piv = low + ((high - low) * rand).floor
  pivot = values[i_piv]
  values[high], values[i_piv] = values[i_piv], values[high]
  i = low
  (low .. high).each do |j|
    if values[j] < pivot
      values[i], values[j] = values[j], values[i]
      i += 1
    end
  end
  values[i], values[high] = values[high], values[i] 
  i
end
