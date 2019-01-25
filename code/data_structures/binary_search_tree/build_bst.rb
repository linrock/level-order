def build_bst(values)
  return if values.length == 0
  root = TreeNode.new(values.shift)
  if values[0] < root.val
    root.left = build_bst(values)
  else
    root.right = build_bst(values)
  end
  root
end
