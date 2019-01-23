require 'max_heap'

def top_k_frequent_words(words, k)
  counts = Hash.new(0)
  words.each do |word|
    counts[word] += 1
  end
  max_heap = MaxHeap.new(size: k)
  counts.each do |word, count|
    max_heap.insert [count, word]
  end
  max_heap.values.map {|count, word| word }
end
