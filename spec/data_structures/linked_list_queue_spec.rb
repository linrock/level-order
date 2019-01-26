require 'linked_list_queue'

RSpec.describe LinkedListQueue do
  it 'enqueues, peeks, and dequeues' do
    queue = LinkedListQueue.new
    expect(queue.peek).to eq(nil)
    expect(queue.size).to eq(0)
    queue.enqueue 10
    queue.enqueue 20
    queue.enqueue 30
    expect(queue.peek).to eq(10)
    expect(queue.dequeue).to eq(10)
    expect(queue.dequeue).to eq(20)
    expect(queue.size).to eq(1)
    expect(queue.peek).to eq(30)
    expect(queue.dequeue).to eq(30)
    expect(queue.size).to eq(0)
    expect(queue.peek).to eq(nil)
  end
end
