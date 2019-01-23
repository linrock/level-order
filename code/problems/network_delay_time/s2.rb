def network_delay_time(edges, n_vertices, source_vertex)
  graph = Array.new(n_vertices) { [] }
  edges.each do |u, v, weight|
    graph[u] << [v, weight]
  end
  distances = Array.new(n_vertices, Float::INFINITY)
  distances[source_vertex] = 0
  queue = [source_vertex]
  while queue.length > 0
    u = queue.shift
    graph[u].each do |v, weight|
      if distances[u] + weight < distances[v]
        distances[v] = distances[u] + weight
        queue << v
      end
    end
  end
  distances.max
end
