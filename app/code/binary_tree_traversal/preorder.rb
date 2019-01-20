def preorder(root)
  puts root.value
  preorder(root.left) if root.left
  preorder(root.right) if root.right
end
