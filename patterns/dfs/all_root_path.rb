

class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end
end

def find_paths(root)
	all_paths = []
	recursive_root_path(root, [], all_paths)
	return all_paths
end

def recursive_root_path(current_node, current_path, all_paths)

	if current_node.nil?
		return
	end

	current_path.append(Array.new(current_node.value))

	recursive_root_path(current_node.left, current_path, all_paths)
	recursive_root_path(current_node.right, current_path, all_paths)

	current_path.pop()

end


root = TreeNode.new(12)
root.left = TreeNode.new(7)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(4)
root.right.left = TreeNode.new(10)
root.right.right = TreeNode.new(5)

puts "Tree paths:" + find_paths(root).to_s

