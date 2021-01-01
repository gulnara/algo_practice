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

	all_paths = []
	find_paths_recursive(root, sum, [], all_paths)
	return all_paths
end


def find_paths_recursive(current_node, sum, current_path, all_paths)
	if current_node.nil?
		return 
	end

	current_path.append(current_node.value)

	if current_node.value == sum and current_node.left.nil? and current_node.right.nil?
		all_paths.append(Array.new(current_path))
	else
		find_paths_recursive(current_node.left, sum - current_node.value, current_path, all_paths)
		find_paths_recursive(current_node.right, sum - current_node.value, current_path, all_paths)
	end

	current_path.pop()

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
