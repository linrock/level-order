require './code/data_structures/stack/stack'

RSpec.describe Stack do
  it 'pushes, peeks, and pops' do
    stack = Stack.new
    expect(stack.size).to eq(0)
    stack.push 0
    stack.push 1
    stack.push 2
    expect(stack.peek).to eq(2)
    expect(stack.size).to eq(3)
    expect(stack.pop).to eq(2)
    expect(stack.pop).to eq(1)
    expect(stack.pop).to eq(0)
    expect(stack.size).to eq(0)
  end
end
