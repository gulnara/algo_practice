
class LinkedList

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

# itirative
#  O(n+m) time | O(1) space
def merge_linked_list(head_one, head_two)
  p1 = head_one
  p1_prev = nil
  p2 = head_two

  while !p1.nil? and !p2.nil?
    if p1.value < p2.value
      p1_prev = p1
      p1 = p1.next
    else
      if !p1_prev.nil?
        p1_prev.next = p2
      end
      p1_prev = p2
      p2 = p2.next
      p1_prev.next = p1
    end
  end

  if p1.nil?
    p1_prev.next = p2
  end

  if head_one.value < head_two.value
    return head_one
  else
    return head_two
  end

end



