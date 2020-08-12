class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

#  O(n) time | O(n) space 
def in_order_traverse(tree, array)

end

#  O(n) time | O(n) space 
def pre_order_traverse(tree, array)

end

#  O(n) time | O(n) space 
def post_order_traverse(tree, array)

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

inOrder = [1, 2, 5, 5, 10, 15, 22]
preOrder = [10, 5, 2, 1, 5, 15, 22]
postOrder = [1, 2, 5, 5, 22, 15, 10]

puts "Should output true: #{in_order_traverse(tree, []) == inOrder}"
puts "Should output true: #{pre_order_traverse(tree, []) == preOrder}"
puts "Should output true: #{post_order_traverse(tree, []) == postOrder}"