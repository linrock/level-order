def bubble_sort(values)
  n = values.length - 1
  loop do
    swapped = false
    (0 .. n - 1).each do |i|
      if values[i] > values[i + 1]
        values[i], values[i + 1] = values[i + 1], values[i]
        swapped = true
      end
    end
    break unless swapped
  end
  values
end
