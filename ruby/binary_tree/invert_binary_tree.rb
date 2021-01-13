class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

# O(n) time | O(n) space
def invert_binary_tree(tree)

  queue = [tree]
  while queue.length != 0
    current = queue.shift

    if current.nil?
      next
    end

    swap_left_and_right(current)
    queue.append(current.left)
    queue.append(current.right)

  end

  return tree

end


def swap_left_and_right(tree)
  tree.left, tree.right = tree.right, tree.left
end


# # O(n) time | O(d) space
def invert_binary_tree(tree)
  if tree.nil?
    return
  end
  swap_left_and_right(tree)
  invert_binary_tree(tree.left)
  invert_binary_tree(tree.right)
  return tree
end

root = BinaryTree.new(1)
root.left = BinaryTree.new(2)
root.right = BinaryTree.new(3)
root.left.left = BinaryTree.new(4)
root.left.right = BinaryTree.new(5)


root_inverted = BinaryTree.new(1)
root_inverted.left = BinaryTree.new(3)
root_inverted.right = BinaryTree.new(2)
root_inverted.right.left = BinaryTree.new(5)
root_inverted.right.right = BinaryTree.new(4)

actual = invert_binary_tree(root)

puts "Should output true: #{actual == root}"


