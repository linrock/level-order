def longest_palindromic_substring(s)
  n = s.length
  longest_length = 1
  is_palindrome = Array.new(n) { Array.new(n, false) }
  (0 .. (n - 1)).each do |i|
    is_palindrome[i][i] = true
  end
  (0 .. (n - 1)).each do |i|

  end
  longest_length
end
