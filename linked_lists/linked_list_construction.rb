
class Node
  attr_accessor :value, :prev, :next

  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end
end


class DoublyLinkedList
  attr_accessor :head, :tail

  def initialize()
    @head = nil
    @tail = nil
  end

  def set_head(node)
    
  end

  def set_tail(node)
    
  end

  def insert_before(node, node_to_insert)
    
  end

  def insert_after(node, node_to_insert)
    
  end

  def insert_at_position(position, node_to_insert)
    
  end

# O(n) time | O(1) space
  def remove_nodes_with_value(value)
    node = self.head
    while !node.nil?
      node_to_remove = node
      node = node.next
      if node_to_remove.value == value
        self.remove(node_to_remove)
      end
    end
  end

# O(1) time | O(1) space
  def remove(node)
    if node == self.head
      self.head = self.head.next
    end

    if node == self.tail
      self.tail = self.tail.prev
    end
    self.remove_bindings(node)

  end

# O(n) time | O(1) space
  def contains_node_with_value(value)
    node = self.head
    while !node.nil? && node.value != value
      node = node.next
    end
    return !node.nil?
  end

  def remove_bindings(node)
    if !node.prev.nil?
      node.prev.next = node.next
    end

    if !node.next.nil?
      node.next.prev = node.prev
    end
    node.prev = nil
    nodex.next = nil

  end

end





