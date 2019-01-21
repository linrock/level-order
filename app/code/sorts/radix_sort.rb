def counting_sort(values, base, digit)
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

def radix_sort(values, base = 10)
  n = values.max.to_s(base).length
  (0 .. n-1).each do |d|
    values = counting_sort(values, base, d)
  end
  values
end
