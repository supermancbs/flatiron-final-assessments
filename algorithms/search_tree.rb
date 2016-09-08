# Given the root note in a sorted binary search tree, how do you find the smallest element
# assumes class methods

def search_true(node)
  if node.left_child==nil && node.right_child==nil
    return node.value
  elsif node.left_child==nil
    return node.value
  elsif  node.left_child.value > node.left_child.value
    search_true(left_child)
  else
    search_true(right_child)
  end
end
