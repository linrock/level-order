def postorder(root)
  postorder(root.left) if root.left
  postorder(root.right) if root.right
  puts root.value
end
