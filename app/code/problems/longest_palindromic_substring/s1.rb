def longest_palindromic_substring(s)
  n = s.length
  longest = 1
  (0 .. (n - 1)).each do |i|
    ((i + 1) .. (n - 1)).each do |j|
      substring = s[i .. j]
      if substring == substring.reverse
        longest = [longest, j - i + 1].max
      end
    end
  end
  longest
end
