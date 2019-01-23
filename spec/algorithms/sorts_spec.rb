Dir.glob("code/algorithms/sorts/*.rb").each do |file|
  require file.gsub(/code\/algorithms\//, '')
end

RSpec.describe 'sorting algorithms' do
  let(:values) { 200.times.map { (100 - 50*rand).to_i } }
  let(:sorted_values) { values.sort }
  let(:n) { values.length }

  it 'bubble sort sorts' do
    expect(bubble_sort(values)).to eq(sorted_values)
  end

  it 'insertion sort sorts' do
    expect(insertion_sort(values)).to eq(sorted_values)
  end

  it 'selection sort sorts' do
    expect(selection_sort(values)).to eq(sorted_values)
  end

  it 'heap sort sorts' do
    expect(heap_sort(values)).to eq(sorted_values)
  end

  it 'merge sort sorts' do
    expect(merge_sort(values)).to eq(sorted_values)
  end

  it 'quick sort sorts' do
    expect(quick_sort(values, 0, n-1)).to eq(sorted_values)
  end

  it 'counting sort sorts' do
    expect(counting_sort(values, n)).to eq(sorted_values)
  end

  it 'radix sort sorts' do
    expect(radix_sort(values)).to eq(sorted_values)
  end
end
