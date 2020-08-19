class MinHeap
  def initialize(array)
    self.heap = self.build_heap(array)
  end

# O(n) time | O(1) space
  def build_heap(array)
    first_parent_idx = (array.length - 2) / 2
    (first_parent_idx).downto(0).each { |current_idx| 
      self.sift_down(current_idx, array.length - 1, array)
    }
    return array
  end

# O(log(n)) time | O(1) space
  def sift_down(current_idx, end_idx, heap)
    child_one_idx = current_idx * 2 + 1
    while child_one_idx <= end_idx
      child_two_idx = -1
      if (current_idx * 2 + 2) <= end_idx
        child_two_idx = current_idx * 2 + 2
      end

      if child_two_idx != -1 && heap[child_two_idx] < heap[child_one_idx]
        idx_to_swap = child_two_idx
      else
        idx_to_swap = child_one_idx
      end

      if heap[idx_to_swap] < heap[current_idx]
        self.swap(current_idx, idx_to_swap, heap)
        current_idx = idx_to_swap
        child_one_idx = current_idx * 2 + 1
      else
        break
      end
    end
    
  end

# O(log(n)) time | O(1) space
  def sift_up(current_idx, heap)
    parent_idx = (current_idx - 1) / 2
    while current_idx > 0 && heap[current_idx] < heap[parent_idx]
      self.swap(current_idx, parent_idx, heap)
      current_idx = parent_idx
      parent_idx = (current_idx - 1) / 2
    end
  end

# O(1) time | O(1) space
  def peek
    return self.heap[0]
  end

# O(log(n)) time | O(1) space
  def remove
    swap(0, self.heap.length-1, self.heap)
    value_to_remove = self.heap.pop
    self.sift_down(0, self.heap.length-1, heap)
    return value_to_remove
  end

# O(log(n)) time | O(1) space
  def insert(value)
    self.heap.append(value)
    self.sift_up(self.heap.length-1, self.heap)
  end

  def swap(i, j, heap)
    heap[i], heap[j] = heap[j], heap[i]
  end
end