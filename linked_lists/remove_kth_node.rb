class LinkedList
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

# O(n) time | O(1) space
def remove_kth_node_from_end(head, k)
  counter = 1
  first = head
  second = head

  while counter <= n
    second = second.next
    counter += 1
  end

  if second.nil?
    head.value = head.next.value
    head.next = head.next.next
    return
  end

  while !second.nil?
    second = second.next
    first = first.next
  end

  first.next = first.next.next

end
