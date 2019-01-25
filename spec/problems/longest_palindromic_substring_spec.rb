RSpec.describe 'longest palindromic substring problem' do
  let(:string) do
    "eddbacdaadcabccceeeeecccd"
  end
  let(:answer) do
    "ccceeeeeccc"
  end

  context 'brute force' do
    before { require 'longest_palindromic_substring/s1.rb' }

    it 'finds the longest palindromic substring' do
      expect(longest_palindromic_substring(string)).to eq(answer)
    end
  end

  context 'dynamic programming' do
    before { require 'longest_palindromic_substring/s2.rb' }

    it 'finds the longest palindromic substring' do
      expect(longest_palindromic_substring(string)).to eq(answer)
    end
  end

  context 'central expansion' do
    before { require 'longest_palindromic_substring/s3.rb' }

    it 'finds the longest palindromic substring' do
      expect(longest_palindromic_substring(string)).to eq(answer)
    end
  end
end
