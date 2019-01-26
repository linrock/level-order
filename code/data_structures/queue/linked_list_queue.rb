class LinkedListQueue

  class Node
    attr_accessor :value, :prev, :next

    def initialize(value)
      @value = value
    end
  end

  attr_reader :size

  def initialize
    @size = 0
    @front = nil
    @back = nil
  end

  def enqueue(value)
    new_back = Node.new(value)
    if @size == 0
      @front = @back = new_back
    else
      new_back.next = @back
      @back.prev = new_back
      @back = new_back
    end
    @size += 1
  end

  def dequeue
    return if @size == 0
    value = @front.value
    if @size == 1
      @front = @back = nil
    else
      new_front = @front.prev
      new_front.next = nil
      @front = new_front
    end
    @size -= 1
    value
  end

  def peek
    return if @size == 0
    @front.value
  end
end
