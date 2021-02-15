
# O(n) t | O(1) s
def quick_select(array, k)
  position = k - 1
  return quick_select_helper(array, 0, array.length - 1, position)
end

def quick_select_helper(array, start_idx, end_idx, position)
  while true
    if start_idx > end_idx
      return "your algo should never arrive here"
    end

    pivot_idx = start_idx
    left_idx = start_idx + 1
    right_idx = end_idx

    while left_idx <= right_idx
      if array[left_idx] > array[pivot_idx] and array[right_idx] < array[pivot_idx]
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

    if right_idx == position
      return array[right_idx]
    elsif right_idx < position
      start_idx = right_idx + 1
    else
      end_idx = right_idx - 1
    end
    

  end
end


def swap(one, two, array)
  array[one], array[two] = array[two], array[one]
end

array = [8, 5, 2, 9, 7, 6, 3]
puts "Should output true: #{quick_select(array, 3) == 5}"


