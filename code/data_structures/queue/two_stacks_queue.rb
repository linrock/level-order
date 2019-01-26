require 'stack'

class TwoStacksQueue
  attr_reader :size

  def initialize
    @size = 0
    @enqueue_stack = Stack.new
    @dequeue_stack = Stack.new
  end

  def enqueue(value)
    @enqueue_stack.push(value)
    @size += 1
  end

  def dequeue
    return if empty?
    while !@enqueue_stack.empty?
      @dequeue_stack.push @enqueue_stack.pop
    end
    @size -= 1
    @dequeue_stack.pop
  end

  def peek
    return if empty?
    while !@enqueue_stack.empty?
      @dequeue_stack.push @enqueue_stack.pop
    end
    @dequeue_stack.peek
  end

  def empty?
    @size == 0
  end
end
