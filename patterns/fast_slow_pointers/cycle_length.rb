# O(n) T | O(1) S

class Node

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

def find_cycle(head)
  slow, fast = head, head

  while !fast.nil? and !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
    if fast == slow
      return calculate_cycle_length(slow)
    end
  end
  return 0
end

def calculate_cycle_length(slow)
  current = slow
  cycle_length = 0

  while true
    current = current.next
    cycle_length += 1
    if current == slow
      break
    end
  end
  return cycle_length
end

head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)

puts "What is a length of cycle?: #{find_cycle(head).to_s}"

head.next.next.next.next.next = head.next.next
puts "What is a length of cycle?: #{find_cycle(head).to_s}"
