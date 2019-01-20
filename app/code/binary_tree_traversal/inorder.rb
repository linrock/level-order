def inorder(root)
  inorder(root.left) if root.left
  puts root.value
  inorder(root.right) if root.right
end
