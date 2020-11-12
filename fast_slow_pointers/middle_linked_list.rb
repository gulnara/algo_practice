
# Given the head of a Singly LinkedList, write a method to return the middle node of the LinkedList.


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