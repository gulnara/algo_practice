# Given the head of a Singly LinkedList, reverse the LinkedList. Write a function to return the new head of the reversed LinkedList.

class Node

	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end

end

def reverse(head)



end


head = Node(2)
head.next = Node(4)
head.next.next = Node(6)
head.next.next.next = Node(8)
head.next.next.next.next = Node(10)
result = reverse(head)
puts result.value
