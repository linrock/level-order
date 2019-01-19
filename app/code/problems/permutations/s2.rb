def dfs(nums, i, path)
  if i == @n
    @permutations << path.dup
    return
  end
  nums.each do |num|
    path << num
    dfs(nums - [num], i+1, path)
    path.pop
  end
end

def permute(nums)
  @permutations = []
  @n = nums.length
  dfs(nums, 0, [])
  @permutations
end
