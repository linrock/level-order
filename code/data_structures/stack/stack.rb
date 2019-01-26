class Stack

  Node = Struct.new(:value, :prev, :next)

  attr_reader :size

  def initialize
    @size = 0
    @top = nil
  end

  def push(value)
    new_top = Node.new(value)
    if @size > 0
      new_top.next = @top
    end
    @top = new_top
    @size += 1
  end

  def pop
    return if empty?
    top = @top
    @top = @top.next
    @size -= 1
    top.value
  end

  def peek
    return if empty?
    @top.value
  end

  def empty?
    @size == 0
  end
end
