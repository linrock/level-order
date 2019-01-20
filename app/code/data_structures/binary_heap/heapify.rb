def heapify(values)
  (values.length / 2).downto(0).each do |i|
    percolate_down(values, i)
  end
end
