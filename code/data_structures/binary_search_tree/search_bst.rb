def search_bst(root, value)
  return false if !root
  return true if value == root.value
  if value < root.value
    search_bst(root.left, value)
  else
    search_bst(root.right, value)
  end
end
