# Given the head of a Singly LinkedList that contains a cycle, write a function to find the starting node of the cycle.

class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def find_cycle_start(head)
  slow,fast = head, head
  length = 0

    while !fast.nil? && !fast.next.nil?
      slow = slow.next
      fast = fast.next.next
      if fast == slow
        length = find_length(slow)
        break
      end
    end

    return find_start(head, length)
end

def find_start(head, length)
  pointer1, pointer2 = head, head

  while length > 0
    pointer2 = pointer2.next
    length -= 1
  end

  while pointer1 != pointer2
    pointer1 = pointer1.next
    pointer2 = pointer2.next
  end

  return pointer1

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

head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)
head.next.next.next.next.next = head.next
puts "What is a start of cycle?: #{find_cycle_start(head).value.to_s}"






