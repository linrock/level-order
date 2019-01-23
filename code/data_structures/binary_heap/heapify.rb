def heapify(values)
  (values.length / 2).downto(0).each do |i|
    sift_down(values, i)
  end
end
