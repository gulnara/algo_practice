class MinHeap
  def initialize(array)
    self.heap = self.build_heap(array)
  end

  def build_heap(array)
    
  end

  def sift_down(current_idx, end_idx, heap)
    
  end

  def sift_up(current_idx, heap)
    
  end

  def peek
    return self.heap[0]
  end

  def remove
    
  end

  def insert(value)
    self.heap.append(value)
    self.sift_up()
  end

  def swap(i, j, heap)
    heap[i], heap[j] = heap[j], heap[i]
  end
end