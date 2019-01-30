RSpec.describe 'longest palindromic substring problem' do
  let(:answers) do
    {
      "eddbacdaadcabccceeeeecccd" => "ccceeeeeccc",
      "eddbaceaadcabccceeeecccd" => "ccceeeeccc"
    }
  end

  RSpec.shared_examples 'finds the longest palindromic substring' do
    it 'finds the longest palindromic substring' do
      answers.each do |s, answer|
        expect(longest_palindromic_substring(s)).to eq(answer)
      end
    end
  end

  context 'brute force' do
    before { require 'longest_palindromic_substring/s1.rb' }
    include_examples 'finds the longest palindromic substring'
  end

  context 'dynamic programming' do
    before { require 'longest_palindromic_substring/s2.rb' }
    include_examples 'finds the longest palindromic substring'
  end

  context 'central expansion' do
    before { require 'longest_palindromic_substring/s3.rb' }
    include_examples 'finds the longest palindromic substring'
  end

  context "Manacher's algorithm" do
    before { require 'longest_palindromic_substring/s4.rb' }
    include_examples 'finds the longest palindromic substring'
  end
end
