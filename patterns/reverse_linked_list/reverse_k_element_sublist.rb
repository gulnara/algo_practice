# Given the head of a LinkedList and a number ‘k’, reverse every ‘k’ sized sub-list starting from the head.
# If, in the end, you are left with a sub-list with less than ‘k’ elements, reverse it too.


class Node

	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end

	def print_list
		current = self
		while !current.nil?
			puts current.value
			current = current.next
		end
	end

end


# 2 -> 4 -> 6 -> 8 -> 10 -> 13 -> 15

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(8)
head.next.next.next.next = Node.new(10)
head.next.next.next.next.next = Node.new(13)
head.next.next.next.next.next.next = Node.new(15)
