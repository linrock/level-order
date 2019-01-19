def permute(nums)
  return [] if nums.length == 0
  permutations = [[nums.shift]]
  while nums.length > 0
    num = nums.shift
    new_permutations = []
    (0 .. permutations.length-1).each do |i|
      p = permutations[i]
      (0 .. p.length).each do |j|
        new_permutations << p.dup.insert(j, num)
      end
    end
    permutations = new_permutations
  end
  permutations
end
