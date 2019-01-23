def network_delay_time(edges, n_vertices, source_vertex)
  @graph = Array.new(n_vertices) { [] }
  edges.each do |u, v, weight|
    @graph[u] << [v, weight]
  end
  @distances = Array.new(n_vertices, Float::INFINITY)
  @distances[source_vertex] = 0
  dfs(source_vertex)
  @distances.max
end

def dfs(vertex)
  @graph[vertex].each do |v, weight|
    if @distances[vertex] + weight < @distances[v]
      @distances[v] = @distances[vertex] + weight
      dfs(v)
    end
  end
end
