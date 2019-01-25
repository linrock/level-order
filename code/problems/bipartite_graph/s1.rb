def bipartite_graph?(n_vertices, edges)
  graph = Array.new(n_vertices) { [] }
  edges.each do |u, v|
    graph[u] << v
    graph[v] << u
  end
  visited = Array.new(n_vertices, false)
  colors = Array.new(n_vertices)
  (0 .. n_vertices-1).each do |i|
    queue = [i]
    while queue.length > 0
      vertex = queue.shift
      next if visited[vertex]
      colors[vertex] ||= 0
      graph[vertex].each do |neighbor|
        return false if colors[neighbor] == colors[vertex]
        colors[neighbor] = 1 - colors[vertex]
        queue << neighbor
      end
      visited[vertex] = true
    end
  end
  true
end
