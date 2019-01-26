def sift_up(values, i)
  return if i == 0
  i_parent = (i - 1) / 2
  if values[i_parent] && values[i] < values[i_parent]
    values[i], values[i_parent] = values[i_parent], values[i]
    sift_up(values, i_parent)
  end
end
