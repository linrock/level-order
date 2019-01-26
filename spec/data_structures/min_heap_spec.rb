require 'min_heap'

RSpec.describe MinHeap do
  let(:n) { 200 }
  let(:heap) { MinHeap.new((1 .. n).to_a.shuffle) }
  let(:heap_values) { heap.instance_variable_get(:@heap) }

  def is_heapified?
    (0 .. (heap_values.length-2)/2).all? do |i|
      value = heap_values[i]
      left = heap_values[2*i+1]
      right = heap_values[2*i+2]
      if left && right
        value <= left && value <= right
      elsif !right
        value <= left
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
        expect(heap.min).to eq(heap_values.min)
        heap.pop
      end
      expect(is_heapified?).to eq(true)
    end
    expect(heap.empty?).to eq(true)
  end

  it 'maintains heap order when inserting' do
    expect(heap_values.length).to eq(n)
    4.times do
      (n/4).times do
        heap.insert((rand*100).to_i)
      end
      expect(is_heapified?).to eq(true)
    end
  end
end
