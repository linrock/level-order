def counting_sort(values, k)
  counts = Array.new(k, 0)
  values.each do |value|
    counts[value] += 1
  end
  total = 0
  k.times do |i|
    old_count = counts[i]
    counts[i] = total
    total += old_count
  end
  sorted = []
  values.each do |value|
    sorted[counts[value]] = value
    counts[value] += 1
  end
  sorted
end
