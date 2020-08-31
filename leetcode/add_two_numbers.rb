class ListNode

  attr_accessor :val, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def add_two_numbers(l1,l2)
    p1, p2 = l1, l2
    
    current = answer = ListNode.new(nil)
    carry = 0

    while p1 || p2 || carry > 0

      a = p1 ? p1.val : 0
      b = p2 ? p2.val : 0
      x = a + b + carry
        
      if x - 10 >= 0
          carry = 1
      else
          carry = 0
      end
      
      node = ListNode.new(x % 10)
      current&.next = node
      current = node
      p1, p2 = p1&.next, p2&.next
    end
    return answer.next
end




# l1 = 2 -> 4 -> 3
# l2 = 5 -> 6 -> 4
# expected = 7 -> 0 -> 8


