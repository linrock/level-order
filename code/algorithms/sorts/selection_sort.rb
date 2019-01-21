def selection_sort(values)
  n = values.length
  (0 .. n - 1).each do |i|
    i_min = i
    (i + 1 .. n - 1).each do |j|
      i_min = j if values[j] < values[i_min]
    end
    values[i], values[i_min] = values[i_min], values[i]
  end
  values
end
