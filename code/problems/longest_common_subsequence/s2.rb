def longest_common_subsequence(s1, s2)
  m, n = s1.length, s2.length
  lcs_lengths = Array.new(m + 1) { Array.new(n + 1, 0) }
  (1 .. m).each do |i|
    (1 .. n).each do |j|
      if s1[i-1] == s2[j-1]
        lcs_lengths[i][j] = 1 + lcs_lengths[i-1][j-1]
      else
        lcs_lengths[i][j] = [
          lcs_lengths[i-1][j],
          lcs_lengths[i][j-1]
        ].max
      end
    end
  end
  lcs_lengths[m][n]
end
