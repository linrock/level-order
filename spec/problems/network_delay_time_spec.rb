require 'json'

RSpec.describe 'network delay time problem' do
  let(:fixture) { 'spec/fixtures/files/problems/network_delay_time.txt' }
  let(:data) { open(fixture, 'r') { |f| f.read.split(/\n/) } }
  let(:edges) { JSON.parse(data[0]) }
  let(:n) { data[1].to_i }
  let(:k) { data[2].to_i }
  let(:answer) { 34 }

  context 'Bellman-Ford algorithm' do
    before { require 'network_delay_time/s1.rb' }

    it 'finds the right time' do
      expect(network_delay_time(edges, n, k)).to eq(answer)
    end
  end

  context 'breadth-first search' do
    before { require 'network_delay_time/s2.rb' }

    it 'finds the right time' do
      expect(network_delay_time(edges, n, k)).to eq(answer)
    end
  end

  context 'depth-first search' do
    before { require 'network_delay_time/s3.rb' }

    it 'finds the right time' do
      expect(network_delay_time(edges, n, k)).to eq(answer)
    end
  end
end
