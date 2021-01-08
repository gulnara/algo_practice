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