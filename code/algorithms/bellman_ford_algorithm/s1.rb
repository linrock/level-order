def bellman_ford_algorithm(graph, source_vertex)
  n = graph.length
  shortest_paths = Array.new(n, Float::INFINITY)
  shortest_paths[source_vertex] = 0
  n.times do
    graph.each_with_index do |edges, v1|
      edges.each_with_index do |weight, v2|
        next if weight == 0
        if shortest_paths[v1] + weight < shortest_paths[v2]
          shortest_paths[v2] = shortest_paths[v1] + weight
        end
      end
    end
  end
  shortest_paths
end
