# Given the root note in a sorted binary search tree, how do you find the smallest element

class Node
  
  attr_accessor :value, :left_child, :right_child

  def initialize(value)
    @value = value
  end

  def search_tree
    if self.left_child==nil || self.right_child==nil
      self.value
    else
      self.left_child.search_tree
    end
  end

end

root_node = Node.new(9)

node1 = Node.new(6)
node2 = Node.new(10)
node3 = Node.new(7)
node4 = Node.new(3)
node5 = Node.new(6)
node6 = Node.new(15)
node7 = Node.new(9)


root_node.left_child = node1
root_node.right_child = node2

node1.left_child = node4
node1.right_child = node5

node2.left_child = node6
node2.right_child = node7

puts root_node.search_tree== 3
