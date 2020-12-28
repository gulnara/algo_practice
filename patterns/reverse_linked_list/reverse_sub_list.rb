# Given the head of a LinkedList and two positions ‘p’ and ‘q’, reverse the LinkedList from position ‘p’ to ‘q’.

class Node

	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end

	def print_list
		temp = self
		while !temp.nil?
			puts temp.value
			temp.next
		end
	end

end

def reverse_sub_list(head, p, q)

end


# 2 -> 4 -> 6 -> 8 -> 10

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(8)
head.next.next.next.next = Node.new(10)
result = reverse_sub_list(head, 2, 4)
result.print_list


