def level_order_iterative(root)
  queue = [root]
  while queue.length > 0
    node = queue.shift
    puts node.value
    queue << node.left if node.left
    queue << node.right if node.right
  end
end
