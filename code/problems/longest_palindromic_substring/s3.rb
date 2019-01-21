def longest_palindromic_substring(s)
  n = s.length
  return s if n <= 1
  i_start = i_end = 0
  (0 .. (2 * n - 1)).each do |i|
    j = k = i / 2
    k += 1 if i % 2 == 1
    while j >= 0 and j < n and k >= 0 and k < n
      break if s[j] != s[k]
      j -= 1
      k += 1
    end
    j += 1
    k -= 1
    if k - j > i_end - i_start
      i_start, i_end = j, k
    end
  end
  s[i_start .. i_end]
end
