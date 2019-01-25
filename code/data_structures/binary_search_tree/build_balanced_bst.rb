def build_balanced_bst(values)
  low, high = 0, values.length - 1
  return if low > high
  mid = (low + high) / 2
  root = TreeNode.new(values[mid])
  root.left = build_balanced_bst(values[0 .. mid-1]) if mid > 0
  root.right = build_balanced_bst(values[mid+1 .. -1])
  root
end
