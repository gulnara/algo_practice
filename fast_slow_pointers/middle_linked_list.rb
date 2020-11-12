
# Given the head of a Singly LinkedList, write a method to return the middle node of the LinkedList.

# O(n) T | O(1) S

class Node

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


def find_middle_of_linked_list(head)
  fast, slow = head, head

  while !fast.nil? and !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end

  return slow
end

head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)

puts "What is a middle of the list?: #{find_middle_of_linked_list(head).value.to_s}"
