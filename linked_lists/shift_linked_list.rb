
class LinkedList

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

# pnt = length - k
# if k too large - do modulo operation = k % length
# if -k -> move forward by k from 0-> pnt = k

# O(n) time | O(1) space
def shift_linked_list(head, k)

  list_length = 1
  list_tail = head

  while !list_tail.next.nil?
    list_tail = list_tail.next
    list_length += 1
  end

  offset = k.abs % list_length
  if offset == 0
    return head
  end

  if k > 0
    new_tail_position = list_length - offset
  else
    new_tail_position = offset
  end

  new_tail = head

  for i in 1..(new_tail_position - 1)
    new_tail = new_tail.next
    i+=1
  end

  new_head = new_tail.next
  new_tail.next = nil
  list_tail.next = head

  return new_head

end


