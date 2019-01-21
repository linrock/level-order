def sift_down(values, i)
  i_swap = i
  i_left = 2 * i + 1
  i_right = 2 * i + 2
  if values[i_left] and values[i_left] < values[i_swap]
    i_swap = i_left
  end
  if values[i_right] and values[i_right] < values[i_swap]
    i_swap = i_right
  end
  return if i == i_swap
  values[i], values[i_swap] = values[i_swap], values[i]
  sift_down(values, i_swap)
end
