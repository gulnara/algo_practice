
class LRUCache

  attr_accessor :max_size, :cache, :current_size, :list_recent

  def initialize(max_size)
    @cache = {}
    @max_size = max_size || 1
    @current_size = 0
    @list_recent = DoublyLinkedList.new()
  end

  def put(key, value)
    if !self.cache.has_key?(key)
      if self.current_size == self.max_size
        self.evict_recent()
      else
        self.current_size += 1
      end
      self.cache[key] = Node.new(key, value)
    else
      self.replace_key(key, value)
    end

    self.update_recent(self.cache[key])
  end

  def evict_recent()
    key_to_remove = self.list_recent.tail.key
    self.list_recent.remove_tail()
    self.cache.delete(key_to_remove)
  end

  def replace_key(key, value)
    self.cache[key] = value
  end

  def update_recent(node)
    self.list_recent.set_head(node)
  end

  def get(key)
    if !self.cache.has_key?(key)
      return -1
    end
    self.update_recent(self.cache[key])
    return self.cache[key].value
  end

  def get_most_recent_key
    if self.list_recent.head.nil?
      return -1
    end
    return self.list_recent.head.key
  end

end

class DoublyLinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def set_head(node)
    if self.head == node
      return
    elsif self.head.nil?
      self.head = node
      self.tail = node
    elsif self.head == self.tail
      self.tail.prev = node
      self.head = node
      self.head.next = self.tail
    else
      if self.tail == node
        self.remove_tail()
      end
      node.remove_bindings()
      self.head.prev = node
      node.next = self.head
      self.head = node
    end

  end

# O(1) time | O(1) space
  def remove_tail
    if self.tail.nil?
      return
    end
    if self.tail == self.head
      self.head = nil
      self.tail = nil
      return
    end

    self.tail = self.tail.prev
    self.tail.next = nil

  end
end

class Node
  attr_accessor :key, :value, :prev, :next

  def initialize(key, value)
    @key = key
    @value = value
    @prev = nil
    @next = nil
  end

  def remove_bindings
    if !self.prev.nil?
      self.prev.next = self.next
    end

    if !self.next.nil?
      self.next.prev = self.prev
    end
    self.prev = nil
    self.next = nil

  end
end