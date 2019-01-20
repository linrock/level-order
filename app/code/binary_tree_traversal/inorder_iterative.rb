def inorder_iterative(root)
  stack = []
  node = root
  while stack.length > 0 or node
    while node
      stack << node
      node = node.left
    end
    node = stack.pop
    puts node.value
    node = node.right
  end
end
