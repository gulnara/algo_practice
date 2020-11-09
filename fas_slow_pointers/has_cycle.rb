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
    slow = slown.next
    if slow == fast
      return true
    end
  end
  return false
end

