from __future__ import print_function
# Given the head of a LinkedList and a number 'k', reverse every alternating 'k' sized sub-list starting from the head.

# If, in the end, you are left with a sub-list with less than 'k' elements, reverse it too.


class Node:

    def __init__(self, value, next=None):
        self.value = value
        self.next = next

    def print_list(self):
        temp = self
        while temp is not None:
            print(temp.value)
            temp = temp.next
        print()

def reverse_alternate_k_elements(head, k):
    if k <= 1 or head is None:
        return head


    current = head
    previous = None

    while current is not None:
        last_node_previous_part = previous
        last_node_sub_list = current
        next = None
        i = 0

        while current is not None and i < k:
            next = current.next
            current.next = previous
            previous = current
            current = next
            i += 1

        if last_node_previous_part is not None:
            last_node_previous_part.next = previous
        else:
            head = previous

        last_node_sub_list.next = current
        previous = last_node_sub_list
        

    return head


def main():
    head = Node(1)
    head.next = Node(2)
    head.next.next = Node(3)
    head.next.next.next = Node(4)
    head.next.next.next.next = Node(5)
    head.next.next.next.next.next = Node(6)
    head.next.next.next.next.next.next = Node(7)
    head.next.next.next.next.next.next.next = Node(8)
    head.print_list()
    result = reverse_alternate_k_elements(head, 2)
    result.print_list()


main()
