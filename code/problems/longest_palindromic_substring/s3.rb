def longest_palindromic_substring(s)
  n = s.length
  return s if n <= 1
  i_start = i_end = 0
  (0 .. (2 * n - 1)).each do |i_center|
    i = j = i_center / 2
    j += 1 if i_center % 2 == 1
    while i >= 0 and i < n and j >= 0 and j < n
      break if s[i] != s[j]
      i -= 1
      j += 1
    end
    i += 1
    j -= 1
    if j - i > i_end - i_start
      i_start, i_end = i, j
    end
  end
  s[i_start .. i_end]
end
