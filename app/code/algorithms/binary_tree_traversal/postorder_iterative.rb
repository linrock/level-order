def postorder_iterative(root)
  prev_node, node = nil, root
  stack = []
  while stack.length > 0 or node
    while node
      stack << node
      node = node.left
    end
    peek_node = stack[-1]
    if peek_node.right and peek_node != prev_node
      node = peek_node.right
    else
      prev_node = stack.pop
      puts prev_node.value
    end
  end
end
