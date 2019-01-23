require 'binary_search/s1.rb'

RSpec.describe method(:binary_search) do
  def bsearch(values, target)
    values.bsearch_index {|x| target <=> x } || -1
  end

  it 'correctly searches for the target value' do
    arr1 = [1,2,3,4,5,6,7,8,9,10]
    [0, 1, 7, 11].each do |target|
      expect(binary_search(arr1, target)).to eq(bsearch(arr1, target))
    end

    arr2 = [1,2,3,4,5,6,7,8,9,10,11]
    [0, 1, 11, 12].each do |target|
      expect(binary_search(arr1, target)).to eq(bsearch(arr1, target))
    end

    arr3 = [1,4,5,6,7,8,9,10,21,27,57,68,87,98,100]
    [0, 1, 57, 98, 100, 101].each do |target|
      expect(binary_search(arr1, target)).to eq(bsearch(arr1, target))
    end
  end
end
