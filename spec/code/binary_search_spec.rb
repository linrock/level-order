require 'binary_search/s1.rb'

RSpec.describe method(:binary_search) do
  it 'searches for the target value' do
    arr1 = [1,2,3,4,5,6,7,8,9,10]
    expect(binary_search(arr1, 0)).to eq(-1)
    expect(binary_search(arr1, 1)).to eq(0)
    expect(binary_search(arr1, 7)).to eq(6)
    expect(binary_search(arr1, 11)).to eq(-1)

    arr2 = [1,2,3,4,5,6,7,8,9,10,11]
    expect(binary_search(arr2, 0)).to eq(-1)
    expect(binary_search(arr2, 1)).to eq(0)
    expect(binary_search(arr2, 11)).to eq(10)
    expect(binary_search(arr2, 12)).to eq(-1)

    arr3 = [1,4,5,6,7,8,9,10,21,27,57,68,87,98,100]
    expect(binary_search(arr3, 0)).to eq(-1)
    expect(binary_search(arr3, 1)).to eq(0)
    expect(binary_search(arr3, 57)).to eq(10)
    expect(binary_search(arr3, 98)).to eq(13)
    expect(binary_search(arr3, 100)).to eq(14)
    expect(binary_search(arr3, 101)).to eq(-1)
  end
end
