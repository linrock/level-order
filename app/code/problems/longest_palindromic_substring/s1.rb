def longest_palindromic_substring(s)
  n = s.length
  longest_length = 1
  (0 .. (n - 1)).each do |i|
    ((i + 1) .. (n - 1)).each do |j|
      substring = s[i .. j]
      if substring == substring.reverse
        longest_length = j - i + 1
      end
    end
  end
  longest_length
end
