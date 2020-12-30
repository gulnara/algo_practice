# Given a binary tree and a number ‘S’, find if the tree has a path from root-to-leaf such that the sum of all the node values of that path equals ‘S’.


class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end


def has_path(root, sum)
	if root.nil?
		return false
	end

	if root.value == sum and root.left.nil? and root.right.nil?
		return true
	end

	has_path(root.right, sum - root.value)
	has_path(root.left, sum - root.value)

end


root = TreeNode.new(12)
root.left = TreeNode.new(7)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(9)
root.right.left = TreeNode.new(10)
root.right.right = TreeNode.new(5)
puts "Tree has path: " + has_path(root, 23).to_s
puts "Tree has path: " + has_path(root, 16).to_s
