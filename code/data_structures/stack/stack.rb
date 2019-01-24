require 'list_node'

class Stack
  attr_reader :size

  def initialize
    @size = 0
    @top = nil
  end

  def push(value)
    new_top = ListNode.new(value)
    if @size > 0
      new_top.next = @top
    end
    @top = new_top
    @size += 1
  end

  def pop
    return if @size == 0
    top = @top
    @top = @top.next
    @size -= 1
    top.value
  end

  def peek
    return if @size == 0
    @top.value
  end
end
