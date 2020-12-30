# Given a binary tree and a number ‘S’, find all paths from root-to-leaf such that the sum of all the node values of each path equals ‘S’.


class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value, left = nil, right = nil)
		@value = value
		@left = left
		@right = right
	end
end

def find_paths(root, sum)

end

root = TreeNode.new(12)
root.left = TreeNode.new(7)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(4)
root.right.left = TreeNode.new(10)
root.right.right = TreeNode.new(5)
sum = 23

puts "Tree paths with sum " + sum.to_s +
        ": " + find_paths(root, sum).to_s
        