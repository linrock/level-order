class LinkedListQueue

  Node = Struct.new(:value, :prev, :next)

  attr_reader :size

  def initialize
    @size = 0
    @front = @back = nil
  end

  def enqueue(value)
    new_back = Node.new(value)
    if empty?
      @front = @back = new_back
    else
      new_back.next = @back
      @back.prev = new_back
      @back = new_back
    end
    @size += 1
  end

  def dequeue
    return if empty?
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
    return if empty?
    @front.value
  end

  def empty?
    @size == 0
  end
end
