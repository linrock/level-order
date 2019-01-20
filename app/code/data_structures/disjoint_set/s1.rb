class DisjointSet

  def initialize(size)
    @parents = (0 .. (size - 1)).to_a
  end

  def union(x, y)
    fx = find(x)
    fy = find(y)
    return if fx == fy
    @parents[fx] = fy
  end

  def find(x)
    while x != @parents[x]
      x = @parents[x]
    end
    x
  end
end
