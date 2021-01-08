# Write a method to see if a binary tree ↴ is "superbalanced" (a new tree property we just made up).


class BinaryTreeNode

	attr_accessor :value
	attr_reader :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end

	def insert_left(value)
		@left = BinaryTreeNode.new(value)
	end

	def insert_right(value)
		@right = BinaryTreeNode.new(value)
	end
end


def balanced_tree(root)

	depth = []

	dfs_balanced_tree(root, depth)

	return depth

end

def dfs_balanced_tree(node, depth)
	running_sum = 0

	while !node.nil? do 
		running_sum += 1

		dfs_balanced_tree(node.left, depth)
		dfs_balanced_tree(node.right, depth)

	end

	depth.append(running_sum)
end


root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(3)

root.left.left = BinaryTreeNode.new(4)
root.left.right = BinaryTreeNode.new(5)

root.right.left = BinaryTreeNode.new(7)
root.right.right = BinaryTreeNode.new(8)


puts balanced_tree(root)



