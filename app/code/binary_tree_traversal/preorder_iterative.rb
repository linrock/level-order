def preorder_iterative(root)
  return if !root
  stack = [root]
  while stack.length > 0
    node = stack.pop
    puts node.value
    stack << node.right if node.right
    stack << node.left if node.left
  end
end
