RSpec.describe 'maximum subarray sum problem' do
  let(:array)  { [8,-19,5,-4,20] }
  let(:answer) { 21 }

  context 'brute force' do
    before { require 'maximum_subarray_sum/s1.rb' }

    it 'finds the maximum sum' do
      max_sum = maximum_subarray_sum(array)
      expect(max_sum).to eq(answer)
    end
  end

  context 'divide and conquer' do
    before { require 'maximum_subarray_sum/s2.rb' }

    it 'finds the maximum sum' do
      max_sum = maximum_subarray_sum(array)
      expect(max_sum).to eq(answer)
    end
  end

  context 'dynamic programming' do
    before { require 'maximum_subarray_sum/s3.rb' }

    it 'finds the maximum sum' do
      max_sum = maximum_subarray_sum(array)
      expect(max_sum).to eq(answer)
    end
  end

  context "Kadane's algorithm" do
    before { require 'maximum_subarray_sum/s4.rb' }

    it 'finds the maximum sum' do
      max_sum = maximum_subarray_sum(array)
      expect(max_sum).to eq(answer)
    end
  end
end
