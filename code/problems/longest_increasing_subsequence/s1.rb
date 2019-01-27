def longest_increasing_subsequence(s)
  n = s.length
  return n if n <= 1
  longest_length = 1
  (1 .. (2 ** n - 1)).each do |i|
    seq = []
    bitmask = i
    n.times do |j|
      seq << s[j] if bitmask & i
      bitmask *= 2
    end
    m = seq.length
    if (0 .. (m - 2)).all? {|j| seq[j] < seq[j + 1] }
      longest_length = [longest_length, m].max
    end
  end
  longest_length
end
