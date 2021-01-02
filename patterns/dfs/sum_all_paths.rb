# Given a binary tree where each node can only have a digit (0-9) value, each root-to-leaf path will represent a number. Find the total sum of all the numbers represented by all paths.


class TreeNode

	attr_accessor :value, :left, :right

	def initialize(value, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end
end


def find_sum_of_path_numbers(root)

end

root = TreeNode.new(1)
root.left = TreeNode.new(0)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(1)
root.right.left = TreeNode.new(6)
root.right.right = TreeNode.new(5)

puts "Total Sum of Path Numbers: " + find_sum_of_path_numbers(root).to_s

