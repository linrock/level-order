require 'two_stacks_queue'

RSpec.describe TwoStacksQueue do
  it 'enqueues, peeks, and dequeues' do
    queue = TwoStacksQueue.new
    expect(queue.peek).to eq(nil)
    expect(queue.size).to eq(0)
    queue.enqueue 0
    queue.enqueue 1
    queue.enqueue 2
    expect(queue.peek).to eq(0)
    expect(queue.dequeue).to eq(0)
    expect(queue.dequeue).to eq(1)
    expect(queue.size).to eq(1)
    expect(queue.peek).to eq(2)
    expect(queue.dequeue).to eq(2)
    expect(queue.size).to eq(0)
    expect(queue.peek).to eq(nil)
    queue.enqueue 10
    queue.enqueue 20
    queue.enqueue 30
    expect(queue.size).to eq(3)
    expect(queue.peek).to eq(10)
    expect(queue.dequeue).to eq(10)
  end
end
