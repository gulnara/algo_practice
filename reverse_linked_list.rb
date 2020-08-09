def reverse_iterative(head)
  # no need to reverse if head is nil
  # or there is only 1 node.
  if (!head || !head.next)
    return head
  end

  current_head = head.next
  reversed_head = head
  reversed_head.next = nil

  while (current_head)
    temp = current_head
    current_head = current_head.next

    temp.next = reversed_head
    reversed_head = temp
  end

  return reversed_head
end

def main()
  list_head = create_random_linked_list(10)
  print "Original:"
  display(list_head)
  list_head = reverse_iterative(list_head)
  print "\nAfter Reverse Iterative: "
  display(list_head)

end

main()