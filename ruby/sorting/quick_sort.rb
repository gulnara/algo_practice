# O(nlog(n)) t | O(log(n)) s

def quick_sort(array)
  quick_sort_helper(array, 0, (array.length - 1))
  return array
end


def quick_sort_helper(array, start_idx, end_idx)
  # if array.length 0 or 1
  if start_idx >= end_idx
    return
  end

  pivot_idx = start_idx
  left_idx = start_idx + 1
  right_idx = end_idx

  while right_idx >= left_idx
    if array[left_idx] > array[pivot_idx] && array[right_idx] < array[pivot_idx]
      swap(left_idx, right_idx, array)
    end

    if array[left_idx] <= array[pivot_idx]
      left_idx += 1
    end

    if array[right_idx] >= array[pivot_idx]
      right_idx -= 1
    end
  end

  swap(pivot_idx, right_idx, array)

  left_sub_array_smaller = (right_idx - 1 - start_idx) < (end_idx - (right_idx + 1))

  if left_sub_array_smaller
    quick_sort_helper(array, start_idx, right_idx - 1)
    quick_sort_helper(array, right_idx + 1 , end_idx)
  else
    quick_sort_helper(array, right_idx + 1 , end_idx)
    quick_sort_helper(array, start_idx, right_idx - 1)
  end
  

end

def swap(i, j, array)
  array[i], array[j] = array[j], array[i]
end


array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]

puts "Should output true: #{quick_sort(array) == expected}"

