class LinkedList
  attr_reader :size

  def initialize
    @size = 0
    @head = nil
  end

  def add(value)
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
end
