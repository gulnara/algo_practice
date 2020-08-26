# O(nlog(n)) t | O(1) s

def heap_sort(array)
  build_max_heap(array)

  for end_idx in (array.length - 1).downto(1)
    swap(0, end_idx, array)
    sift_down(0, end_idx - 1, array)
  end

  return array

end

def build_max_heap(array)
  first_parent_idx = (array.length - 1) / 2
  for current_idx in first_parent_idx.downto(0)
    sift_down(current_idx, array.length - 1, array)
  end
end

def sift_down(current_idx, end_idx, heap)
  child_one_idx = current_idx * 2 + 1
  while child_one_idx <= end_idx
    child_two_idx = -1
    if current_idx * 2 + 2 <= end_idx
      child_two_idx = current_idx * 2 + 2
    end

    if child_two_idx > -1  && heap[child_two_idx] > heap[child_one_idx]
      index_to_swap = child_two_idx
    else
      index_to_swap = child_one_idx
    end
    if heap[index_to_swap] > heap[current_idx]
      swap(current_idx, index_to_swap, heap)
      current_idx = index_to_swap
      child_one_idx = current_idx * 2 + 1
    else
      return
    end
  end

end

def swap(i, j, array)
  array[i], array[j] = array[j], array[i]
end


array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]

puts "Should output true: #{heap_sort(array) == expected}"


