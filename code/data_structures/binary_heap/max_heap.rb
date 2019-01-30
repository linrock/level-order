class MaxHeap
  def initialize(values = [])
    @heap = values.dup
    heapify unless empty?
  end

  def insert(value)
    raise NotImplementedError
  end

  def max
    @heap[0] unless empty?
  end

  def pop
    return if empty?
    max_value = @heap[0]
    last_value = @heap.pop
    unless empty?
      @heap[0] = last_value
      sift_down(0)
    end
    max_value
  end

  def empty?
    @heap.empty?
  end

  private

  def sift_down(i)
    i_swap = i
    i_left = 2*i + 1
    i_right = 2*i + 2
    if @heap[i_left] && @heap[i_left] > @heap[i]
      i_swap = i_left
    end
    if @heap[i_right] && @heap[i_right] > @heap[i_swap]
      i_swap = i_right
    end
    return if i == i_swap
    @heap[i], @heap[i_swap] = @heap[i_swap], @heap[i]
    sift_down(i_swap)
  end

  def heapify
    (@heap.length/2).downto(0).each do |i|
      sift_down(i)
    end
  end
end
