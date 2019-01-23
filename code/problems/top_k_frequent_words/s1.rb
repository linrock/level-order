def top_k_frequent_words(words, k)
  counts = Hash.new(0)
  words.each do |word|
    counts[word] += 1
  end
  counts = counts.sort_by {|word, count| [-count, word] }
  counts[0 .. k].map {|word, count| word }
end
