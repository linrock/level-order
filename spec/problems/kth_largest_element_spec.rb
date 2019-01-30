RSpec.describe 'k-th largest element problem' do
  let(:n) { 100 }
  let(:values) { n.times.map { (rand*50 - 100).to_i } }
  let(:sorted_values) { values.sort }

  context 'sorting' do
    before { require 'kth_largest_element/s1.rb' }

    it 'finds the k-th largest element' do
      (1 .. n).each do |k|
        expect(kth_largest_element(values, k)).to eq(sorted_values[-k])
      end
    end
  end

  context 'min-heap' do
    before { require 'kth_largest_element/s2.rb' }

    it 'finds the k-th largest element' do
      (1 .. n).each do |k|
        expect(kth_largest_element(values, k)).to eq(sorted_values[-k])
      end
    end
  end

  context 'quickselect' do
    before { require 'kth_largest_element/s4.rb' }

    it 'finds the k-th largest element' do
      (1 .. n).each do |k|
        expect(kth_largest_element(values, k)).to eq(sorted_values[-k])
      end
    end
  end
end
