require 'queue/queue'

RSpec.describe Codex::Queue do
  it 'enqueues, peeks, and dequeues' do
    queue = Codex::Queue.new
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
  end
end
