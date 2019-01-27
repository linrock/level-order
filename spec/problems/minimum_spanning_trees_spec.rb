RSpec.describe 'minimum spanning trees problem' do
  let(:fixture) { 'spec/fixtures/files/problems/minimum_spanning_trees.txt' }
  let(:edges) do
    open(fixture, 'r') do |f|
      f.strip.split(/\n/).map {|row| row.strip.split(/\s+/).map(&:to_i) }
    end
  end

  context "Prim's algorithm" do

  end

  context "Kruskal's algorithm" do

  end
end
