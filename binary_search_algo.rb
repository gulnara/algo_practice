
def binary_search(array, target)

  binary_search_helper(array, target, 0, array.length - 1)

end

# recursive
# O(log(n)) T S
def binary_search_helper(array, target, left_pointer, right_pointer)
  
  if left_pointer > right_pointer
    return -1
  end

  mid_pointer = (right_pointer + left_pointer)/2


  if array[mid_pointer] == target
    return mid_pointer
  elsif target < array[mid_pointer]
    binary_search_helper(array, target, left_pointer, mid_pointer - 1)
  else
    binary_search_helper(array, target, mid_pointer + 1, right_pointer)
  end

end

# itterative
# O(log(n)) T | O(1) S
def binary_search_helper(array, target, left_pointer, right_pointer)

  while left_pointer <= right_pointer do
    mid = (left_pointer + right_pointer) / 2
    if array[mid] == target
      return mid
    elsif array[mid] < target
      left_pointer = mid + 1
    else
      right_pointer = mid - 1
    end
  end
  return -1

end

array = [0, 1, 21, 33, 45, 45, 61, 71, 72, 73]
target = 33
expected = 3
actual = binary_search(array, target)

puts "Should output true: #{actual == expected}"