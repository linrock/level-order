def longest_palindromic_substring(s)
  n = s.length
  return s if n <= 1
  is_pal = Array.new(n) { Array.new(n) }
  i_start = i_end = 0
  (n - 1).downto(0).each do |i|
    i.upto(n - 1).each do |j|
      if j - i < 3
        is_pal[i][j] = s[i] == s[j]
      else
        is_pal[i][j] = s[i] == s[j] && is_pal[i + 1][j - 1]
      end
      if is_pal[i][j] && j - i > i_end - i_start
        i_start, i_end = i, j
      end
    end
  end
  s[i_start .. i_end]
end
