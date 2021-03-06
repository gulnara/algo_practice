# Given a binary tree where each node can only have a digit (0-9) value, each root-to-leaf path will represent a number. Find the total sum of all the numbers represented by all paths.


class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end
end


# def find_sum_of_path_numbers(root)
# 	sum = []
# 	recusive_sum(root, "", sum)
# 	return sum.sum()
# end

# def recusive_sum(current_node, running_sum_string, sum)
# 	if current_node.nil?
# 		return
# 	end

# 	running_sum_string += current_node.value.to_s

# 	if current_node.left.nil? and current_node.right.nil?
# 		sum.append(running_sum_string.to_i)
# 	end

# 	recusive_sum(current_node.left, running_sum_string, sum)
# 	recusive_sum(current_node.right, running_sum_string, sum)

# end
 
# O(N) T | S 

def find_sum_of_path_numbers(root)
	return recusive_sum(root, 0)
end

def recusive_sum(current_node, sum)
	if current_node.nil?
		return 0
	end

	sum = 10 * sum + current_node.value

	if current_node.left.nil? and current_node.right.nil?
		return sum
	end

	return recusive_sum(current_node.left, sum) + recusive_sum(current_node.right, sum)

end


root = TreeNode.new(1)
root.left = TreeNode.new(0)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(1)
root.right.left = TreeNode.new(6)
root.right.right = TreeNode.new(5)

puts "Total Sum of Path Numbers: " + find_sum_of_path_numbers(root).to_s

