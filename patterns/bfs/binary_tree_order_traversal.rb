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

	result = []

	if root.nil?
		return result
	end

	queue = []
	queue.append(root)

	while !queue.empty?
		level_size = queue.length
		current_level = []

		for i in 0..(level_size - 1)
			current_node = queue.shift()
			current_level.append(current_node.value)

			if current_node.left
				queue.append(current_node.left)
			end

			if current_node.right
				queue.append(current_node.right)
			end

		end

		result.append(current_level)

	end

	return result
end


root = TreeNode.new(12)
root.left = TreeNode.new(7)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(9)
root.right.left = TreeNode.new(10)
root.right.right = TreeNode.new(5)

puts "Level order traversal: " + bfs_traversal(root).to_s
