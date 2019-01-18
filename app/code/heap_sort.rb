def percolate_down(values, i, heap_size)
  i_swap = i
  i_left = 2*i+1
  if i_left < heap_size and values[i_left] > values[i_swap]
    i_swap = i_left
  end
  i_right = 2*i+2
  if i_right < heap_size and values[i_right] > values[i_swap]
    i_swap = i_right
  end
  return if i_swap == i
  values[i], values[i_swap] = values[i_swap], values[i]
  percolate_down(values, i_swap, heap_size)
end

def heap_sort(values)
  n = values.length
  (n/2 - 1).downto(0).each do |i|
    percolate_down(values, i, n)
  end
  (n - 1).downto(0).each do |i|
    values[0], values[i] = values[i], values[0]
    percolate_down(values, 0, i)
  end
  values
end
