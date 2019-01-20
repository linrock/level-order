def insertion_sort(values)
  n = values.length
  (1 .. n - 1).each do |i|
    value = values[i]
    j = i - 1
    while j >= 0 and values[j] > value
      values[j + 1] = values[j]
      j -= 1
    end
    values[j + 1] = value
  end
  values
end
