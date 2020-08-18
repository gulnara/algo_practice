
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

  def setHead(node)
    
  end

  def setTail(node)
    
  end

  def insertBefore(node, nodeToInsert)
    
  end

  def insertAfter(node, nodeToInsert)
    
  end

  def insertAtPosition(position, nodeToInsert)
    
  end

  def removeNodesWithValue(value)
    
  end

  def remove(node)
    
  end

  def containsNodeWithValue(value)
    
  end
end