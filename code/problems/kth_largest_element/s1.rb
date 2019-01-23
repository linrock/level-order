def kth_largest_element(values, k)
  values.sort![-k]
end
