class Stack
  attr_reader :size

  def initialize
    @size = 0
    @head = nil
  end

  def push(value)
    node = ListNode.new(value)
    if @size > 0
      node.next = @head
    end
    @head = node
    @size += 1
  end

  def pop
    return if @size == 0
    node = @head
    @head = @head.next
    @size -= 1
    node.value
  end

  def peek
    return if @size == 0
    @head.value
  end
end
