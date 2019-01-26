class ArrayQueue

  def initialize
    @queue = []
  end

  def enqueue(value)
    @queue.push(value)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end

  def size
    @queue.length
  end
end
