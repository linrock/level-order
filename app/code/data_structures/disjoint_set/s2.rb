class DisjointSet

  def initialize(size)
    @parents = (0 .. (size - 1)).to_a
    @ranks = Array.new(size, 0)
  end

  def union(x, y)
    fx = find(x)
    fy = find(y)
    return if fx == fy
    if @ranks[fx] < @ranks[fy]
      @parents[fy] = fx
    elsif @ranks[fx] > @ranks[fy]
      @parents[fx] = fy
    else
      @parents[fx] = fy
      @rank[fy] += 1
    end
  end

  def find(x)
    if x != @parents[x]
      @parents[x] = find(@parents[x])
    end
    @parents[x]
  end
end
