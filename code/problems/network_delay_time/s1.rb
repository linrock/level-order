def network_delay_time(edges, n_vertices, source_vertex)
  distances = Array.new(n_vertices, Float::INFINITY)
  distances[source_vertex] = 0
  n_vertices.times do
    edges.each do |u, v, weight|
      if distances[u] + weight < distances[v]
        distances[v] = distances[u] + weight
      end
    end
  end
  distances.max
end
