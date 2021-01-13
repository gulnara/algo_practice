
class LinkedList

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

# O(n) time | O(1) space
def find_loop(head)
  first = head.next
  second = head.next.next

  while first != second
    first = first.next
    second = second.next.next
  end
  first = head
  while first != second
    first = first.next
    second = second.next
  end
  return first

end