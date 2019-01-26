class MinHeap

  def initialize(values = [])
    @heap = values
    heapify unless empty?
  end

  def insert(value)
    @heap << value
    sift_up(@heap.length - 1)
  end

  def min
    @heap[0]
  end

  def pop
    return if empty?
    min_value = @heap[0]
    last_value = @heap.pop
    unless empty?
      @heap[0] = last_value
      sift_down(0)
    end
    min_value
  end

  def empty?
    @heap.empty?
  end

  private

  def sift_up(i)
    i_parent = (i - 1) / 2
    if i_parent >= 0 && @heap[i] < @heap[i_parent]
      @heap[i], @heap[i_parent] = @heap[i_parent], @heap[i]
      sift_up(i_parent)
    end
  end

  def sift_down(i)
    i_swap = i
    i_left = 2*i + 1
    i_right = 2*i + 2
    if @heap[i_left] and @heap[i_left] < @heap[i_swap]
      i_swap = i_left
    end
    if @heap[i_right] and @heap[i_right] < @heap[i_swap]
      i_swap = i_right
    end
    return if i_swap == i
    @heap[i], @heap[i_swap] = @heap[i_swap], @heap[i]
    sift_down(i_swap)
  end

  def heapify
    (@heap.length/2).downto(0).each do |i|
      sift_down(i)
    end
  end
end
