def counting_sort(values, digit)
  base = 10
  counts = Array.new(base, 0)
  values.each do |value|
    counts[value/(base**digit) % base] += 1
  end
  total = 0
  base.times do |i|
    old_count = counts[i]
    counts[i] = total
    total += old_count
  end
  output = []
  values.each do |value|
    key = value/(base**digit) % base
    output[counts[key]] = value
    counts[key] += 1
  end
  output
end

def radix_sort(values)
  n = values.max.digits.count
  (0 .. n-1).each do |d|
    values = counting_sort(values, d)
  end
  values
end
