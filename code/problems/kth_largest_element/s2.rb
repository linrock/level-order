require 'max_heap'

def kth_largest_element(values, k)
  heap = MaxHeap.new(values)
  kth_largest = nil
  k.times do
    kth_largest = heap.pop
  end
  kth_largest
end
