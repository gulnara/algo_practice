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

def reverse_sub_list(head, k)
	if k <= 1 or head.nil?
		return head
	end

	current = head
	previous = nil 

	while !current.nil?
		last_node_of_previous_part = previous
		last_node_of_sub_list = current
		next_node = nil
		i = 0

		while !current.nil? and i < k
				next_node = current.next
				current.next = previous
				previous = current
				current = next_node
				i += 1
		end

		if !last_node_of_previous_part.nil?
			last_node_of_previous_part.next = previous
		else
			head = previous
		end

		last_node_of_sub_list.next = current
		previous = last_node_of_sub_list
	end

	return head
end


# 2 -> 4 -> 6 -> 8 -> 10 -> 13 -> 15

# 6 -> 4 -> 2 -> 13 -> 10 -> 8 -> 15

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(8)
head.next.next.next.next = Node.new(10)
head.next.next.next.next.next = Node.new(13)
head.next.next.next.next.next.next = Node.new(15)
result = reverse_sub_list(head, 3)
result.print_list
