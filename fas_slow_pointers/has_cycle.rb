# Given the head of a Singly LinkedList, write a function to determine if the LinkedList has a cycle in it or not.

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def has_cycle(head)
  slow, fast = head, head

  while !fast.nil? and !fast.next.nil?
    fast = fast.next.next
    slow = slow.next
    if slow == fast
      return true
    end
  end
  return false
end

head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)

puts "Does this list have a cycle?: #{has_cycle(head).to_s}"

head.next.next.next.next.next = head.next.next
puts "Does this list have a cycle?: #{has_cycle(head).to_s}"