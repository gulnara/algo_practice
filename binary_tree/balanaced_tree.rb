# Write a method to see if a binary tree ↴ is "superbalanced" (a new tree property we just made up).


class BinaryTreeNode

	attr_accessor :value, :left, :right

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

	dfs_balanced_tree(root, 0, depth)

end

# O(n) T | S 

def dfs_balanced_tree(node, running_sum, depth)

	if node.nil?
		return true
	end

	running_sum += 1

	if node.left.nil? and node.right.nil?
		if !depth.include?(running_sum) 
			depth.append(running_sum)
		end

		if depth.length > 2
			return false
		elsif depth.length == 2
			diff = (depth[0] - depth[1]).abs()
				if diff > 1
					return false
				end
		else
			return true
		end

	end

	dfs_balanced_tree(node.left, running_sum, depth)
	dfs_balanced_tree(node.right, running_sum, depth)

end


root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(3)

root.left.left = BinaryTreeNode.new(4)

root.left.right = BinaryTreeNode.new(5)

root.right.left = BinaryTreeNode.new(7)
root.right.right = BinaryTreeNode.new(8)


puts balanced_tree(root)

root.left.left.left = BinaryTreeNode.new(11)
root.right.right.right = BinaryTreeNode.new(9)
root.right.right.right.right = BinaryTreeNode.new(10)

puts balanced_tree(root)
