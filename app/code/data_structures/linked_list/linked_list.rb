class LinkedList
  attr_reader :size, :head

  def initialize
    @size = 0
    @head = nil
  end

  def insert(value)
    if @size == 0
      @head = ListNode.new(value)
    else
      node = @head
      while node.next
        node = node.next
      end
      node.next = ListNode.new(value)
    end
    @size += 1
  end

  def find(value)
    node = @head
    while node
      return node if node.value == value
      node = node.next
    end
  end
end
