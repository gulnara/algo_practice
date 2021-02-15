# Given the head of a Singly LinkedList, reverse the LinkedList. Write a function to return the new head of the reversed LinkedList.

class Node

	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end

end


# O(N) T | O(1) S 

def reverse(head)

	current = head
	previous = nil
	next_node = nil

	while !current.nil?
		next_node = current.next
		current.next = previous
		previous = current
		current = next_node
	end

	return previous
end


# 2 -> 4 -> 6 -> 8 -> 10

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(8)
head.next.next.next.next = Node.new(10)
result = reverse(head)
puts result.value
