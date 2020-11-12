# Given the head of a Singly LinkedList that contains a cycle, write a function to find the starting node of the cycle.

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def find_cycle_start(head)

end

def find_cycle(head)
  slow,fast = head, head

  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
    if fast == slow
      return find_length(slow)
    end
  end

  return 0
end

def find_length(slow)
  current = slow
  length = 0

  while true
    current = current.next
    length += 1

    if current == slow
      break
    end
  end

  return length
end








