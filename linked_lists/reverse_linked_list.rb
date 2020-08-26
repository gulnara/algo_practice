# O(n) time | O(1) space

def reverse_linked_list(head)
  p1 = nil
  p2 = head

  while !p2.nil?
    p3 = p2.next
    p2.next = p1
    p1 = p2
    p2 = p3
  end

  return p1
end

