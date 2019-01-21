require 'min_heap'

def dijkstras_algorithm(graph, source_vertex, target_vertex)
  n = graph.length
  visited = Array.new(n, false)
  shortest_paths = Array.new(n, Float::INFINITY)
  shortest_paths[source_vertex] = 0
  heap = MinHeap.new
  heap.add [0, source_vertex]
  loop do
    dist, next_vertex = heap.pop
    break if !next_vertex
    visited[next_vertex] = true
    graph[next_vertex].each_with_index do |w, v|
      next if weight == 0 or visited[v]
      if shortest_paths[next_vertex] + w < shortest_paths[v]
        shortest_paths[v] = shortest_paths[next_vertex] + w
        heap.add [shortest_paths[v], v]
      end
    end
    break if visited[target_vertex]
  end
  shortest_paths[target_vertex]
end
