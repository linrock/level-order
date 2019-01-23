require 'quickselect'

RSpec.describe method(:quickselect) do
  it 'selects the kth smallest element' do 
    values = 50.times.map { (rand*50 - 100).to_i }
    n = values.length
    sorted_values = values.sort
    (2 .. 20).each do |k|
      expect(quickselect(values, 0, n-1, k)).to eq(sorted_values[k-1])
    end
  end
end
