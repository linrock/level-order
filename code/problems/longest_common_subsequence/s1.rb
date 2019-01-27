def longest_common_subsequence(s1, s2)
  m, n = s1.length, s2.length
  longest_length = 0
  (1 .. 2**m-1).each do |bitmask|
    subsequence = []
    i = 0
    while 2**i <= bitmask
      if bitmask & 2**i != 0
        subsequence << s1[i]
      end
      i += 1
    end
    i = 0
    s2.each_char do |c|
      if subsequence[i] == c
        i += 1
      end
    end
    if i == subsequence.length && i > longest_length
      longest_length = i
    end
  end
  longest_length
end
