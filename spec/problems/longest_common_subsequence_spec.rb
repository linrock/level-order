RSpec.describe 'longest common subsequence problem' do
  let(:s1) { "AABCDEFAAX" }
  let(:s2) { "AABBCXXDEEFFAXA" }

  context 'brute force' do
    before { require 'longest_common_subsequence/s1.rb' }

    it 'finds the length of the longest common subsequence' do
      expect(longest_common_subsequence(s1, s2)).to eq(9)
    end
  end

  context 'dynamic programming' do
    before { require 'longest_common_subsequence/s2.rb' }

    it 'finds the length of the longest common subsequence' do
      expect(longest_common_subsequence(s1, s2)).to eq(9)
    end
  end
end
