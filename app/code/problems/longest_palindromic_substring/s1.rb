def longest_palindromic_substring(s)
  n = s.length
  i_start = i_end = 0
  (0 .. (n - 1)).each do |i|
    ((i + 1) .. (n - 1)).each do |j|
      substr = s[i .. j]
      if substr == substr.reverse && k - j > i_end - i_start
        i_start, i_end = j, k
      end
    end
  end
  s[i_start .. i_end]
end
