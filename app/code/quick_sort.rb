def partition(array, low, high)
  pivot = array[high]
  i = low - 1
  (low .. high-1).each do |j|
    if array[j] <= pivot
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end
  array[i + 1], array[high] = array[high], array[i + 1]
  i + 1
end

def quick_sort(array, low, high)
  return if low > high
  i = partition(array, low, high)
  quick_sort(array, low, i-1)
  quick_sort(array, i+1, high)
  array
end
