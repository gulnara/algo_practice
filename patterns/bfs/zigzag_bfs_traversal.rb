# Given a binary tree, populate an array to represent its zigzag level order traversal. You should populate the values of all nodes of the first level from left to right, then right to left for the next level and keep alternating in the same manner for the following levels.

class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end


def zigzag_traversal(node)
	result = []

	if node.nil?
		return result
	end

	queue = []
	queue.append(node)
	left_direction = true

	while !queue.nil?
		current_level = []
		level_size = queue.length

		for i in 0..(level_size - 1)
			current_node = queue.shift()

			if left_direction == true
				current_level.append(current_node.value)
			else
				current_level.unshift(current_node.value)
			end

			if current_node.left
				queue.append(current_node.left)
			end

			if current_node.right
				queue.append(current_node.right)
			end
			left_direction = false
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

puts "Level order traversal: " + zigzag_traversal(root).to_s
