# O(n) time | O(1) space

def reverse_linked_list(head)
  previous = nil
  current = head

  while !current.nil?
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end

  return previous
end

