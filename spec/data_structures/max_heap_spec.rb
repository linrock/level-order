require 'max_heap'

RSpec.describe MaxHeap do
  let(:n) { 200 }
  let(:heap) { MaxHeap.new((1 .. n).to_a.shuffle) }
  let(:heap_values) { heap.instance_variable_get(:@heap) }

  def is_heapified?
    (0 .. (heap_values.length-2)/2).all? do |i|
      value = heap_values[i]
      left = heap_values[2*i+1]
      right = heap_values[2*i+2]
      if left && right
        value >= left && value >= right
      elsif !right
        value >= left
      else
        true
      end
    end
  end

  it 'heapifies an array' do
    expect(heap_values.length).to eq(n)
    expect(is_heapified?).to eq(true)
  end

  it 'maintains heap order when poppin' do
    expect(heap_values.length).to eq(n)
    4.times do
      (n/4).times do
        expect(heap.max).to eq(heap_values.max)
        heap.pop
      end
      expect(is_heapified?).to eq(true)
    end
    expect(heap.empty?).to eq(true)
  end

  it 'does not mutate input array' do
    values = [1,2,3,4,5]
    n = values.length
    heap = MaxHeap.new(values)
    heap.pop
    expect(values.length).to eq(n)
  end
end
