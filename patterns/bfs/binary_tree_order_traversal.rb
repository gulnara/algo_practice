# Given a binary tree, populate an array to represent its level-by-level traversal. You should populate the values of all nodes of each level from left to right in separate sub-arrays.

class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end


def bfs_traversal(root)


end


root = TreeNode.new(12)
root.left = TreeNode.new(7)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(9)
root.right.left = TreeNode.new(10)
root.right.right = TreeNode.new(5)

puts traverse(root)
