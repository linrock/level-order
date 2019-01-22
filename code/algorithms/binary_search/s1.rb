def binary_search(values, target)
  low = 0
  high = values.length - 1
  while low <= high
    mid = (low + high) / 2
    if values[mid] == target
      return mid
    elsif values[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  -1
end
