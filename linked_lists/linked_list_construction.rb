
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
    if self.head.nil?
      self.head = node
      self.tail = node
      return
    end

    self.insert_before(self.head, node)

  end

  def set_tail(node)
    if self.tail.nil?
      self.set_head(node)
      return
    end

    self.insert_after(self.tail, node)
    
  end

# O(1) time | O(1) space
  def insert_before(node, node_to_insert)
    if node_to_insert == self.head and node_to_insert == self.tail
      return
    end

    self.remove(node_to_insert)
    node_to_insert.next = node.prev
    node_to_insert.prev = node

    if node.prev.nil?
      self.head = node_to_insert
    else
      node.prev.next = node_to_insert
    end

    node.prev = node_to_insert
    
  end

# O(1) time | O(1) space
  def insert_after(node, node_to_insert)
    if node_to_insert == self.head and node_to_insert == self.tail
      return
    end

    self.remove(node_to_insert)
    node_to_insert.next = node
    node_to_insert.prev = node.next

    if node.next.nil?
      self.tail = node_to_insert
    else
      node.next.prev = node_to_insert
    end

    node.next = node_to_insert
    
  end

# O(p) time | O(1) space
  def insert_at_position(position, node_to_insert)
    if position == 1
      self.set_head(node_to_insert)
      return
    end

    node = self.head
    current_position = 1

    while !node.nil? && current_position != position
      node = node.next
      current_position += 1
    end

    if !node.nil?
      self.insert_before(node, node_to_insert)
    else
      self.set_tail(node_to_insert)
    end
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





