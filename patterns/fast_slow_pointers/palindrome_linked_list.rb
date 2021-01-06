# Given the head of a Singly LinkedList, write a method to check if the LinkedList is a palindrome or not.

# Your algorithm should use constant space and the input LinkedList should be in the original form once the algorithm is finished. The algorithm should have O(N)O(N) time complexity where ‘N’ is the number of nodes in the LinkedList.


# Input: 2 -> 4 -> 6 -> 4 -> 2 -> null
# Output: true

# Input: 2 -> 4 -> 6 -> 4 -> 2 -> 2 -> null
# Output: false


class Node

	attr_accessor :value, :next

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end


def is_palindromic_linked_list(head)

end

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(2)

puts "Is palindrome, should be true: " + is_palindromic_linked_list(head).to_s

head.next.next.next.next.next = Node.new(2)
puts "Is palindrome, should be false: " + is_palindromic_linked_list(head).to_s

