def insert_into_bst(root, value)
  return TreeNode.new(value) if !root
  if value < root.value
    root.left = insert_into_bst(root.left, value)
  else
    root.right = insert_into_bst(root.right, value)
  end
  root
end
