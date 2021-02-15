class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

# O(n) T | O(d) S
def validate_bst(tree)

  return validate_bst_helper(tree, - 1.0 / 0, 1.0 / 0)

end

def validate_bst_helper(tree, min_value, max_value)

  if tree.nil?
    return true
  end

  if tree.value < min_value || tree.value >= max_value
    return false
  end

  left_is_valid = validate_bst_helper(tree.left, min_value, tree.value)

  return left_is_valid && validate_bst_helper(tree.right, tree.value, max_value)

end


root = BST.new(10)
root.left = BST.new(5)
root.left.left = BST.new(2)
root.left.left.left = BST.new(1)
root.left.right = BST.new(5)
root.right = BST.new(15)
root.right.left = BST.new(13)
root.right.left.right = BST.new(14)
root.right.right = BST.new(22)

puts "Should output true: #{validate_bst(root) == true}"

