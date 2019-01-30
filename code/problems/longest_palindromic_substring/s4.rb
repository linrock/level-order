def longest_palindromic_substring(s)
  t = s.split("").map {|c| "##{c}" }.join + "#"
  t = "^#{t}$"
  p_lengths = Array.new(t.length, 0)
  center = right = 0
  (1 .. t.length-1).each do |i|
    mirror = 2*center - i
    if i < right
      p_lengths[i] = [right - i, p_lengths[mirror]].min
    end
    while t[i - (1+p_lengths[i])] == t[i + (1+p_lengths[i])]
      p_lengths[i] += 1
    end
    if p_lengths[i] + i > right
      center = i
      right = p_lengths[i] + i
    end
  end
  max_length = p_lengths.max
  center = p_lengths.index(max_length)/2 - 1
  p_start = center - max_length/2
  if max_length % 2 == 0
    p_start += 1
  end
  p_end = center + max_length/2
  s[p_start .. p_end]
end
