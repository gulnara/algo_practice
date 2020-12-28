# Given the head of a LinkedList and two positions ‘p’ and ‘q’, reverse the LinkedList from position ‘p’ to ‘q’.

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

def reverse_sub_list(head, s, q)

	if s == q
		return head
	end

	current = head
	previous = nil
	i = 0

	# after skipping 'p-1' nodes, current will point to 'p'th node
	while !current.nil? and i < (s - 1)
		previous = current
		current = current.next
		i += 1
	end

	# we are interested in three parts of the LinkedList, the part before index 'p',
  # the part between 'p' and 'q', and the part after index 'q'

  last_node_of_first_part = previous

  # after reversing the LinkedList 'current' will become the last node of the sub-list
  last_node_of_sub_list = current

	# will be used to temporarily store the next node
  next_node = nil  

  i = 0

  # reverse nodes between 'p' and 'q'
  while !current.nil? and i < (q - s + 1)
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
    i += 1
  end

  # connect with the first part
  if !last_node_of_first_part.nil?

    # 'previous' is now the first node of the sub-list
    last_node_of_first_part.next = previous

  # this means s == 1 i.e., we are changing the first node (head) of the LinkedList
  else
    head = previous
  end

  # connect with the last part
  last_node_of_sub_list.next = current

  return head
end


# 2 -> 4 -> 6 -> 8 -> 10

head = Node.new(2)
head.next = Node.new(4)
head.next.next = Node.new(6)
head.next.next.next = Node.new(8)
head.next.next.next.next = Node.new(10)
result = reverse_sub_list(head, 2, 4)
# puts result
result.print_list


