# recursive
# O(log(n)) T S

def shifted_binary_search(array, target)
  return shifted_binarysearch_helper(array, target, 0, array.length - 1)
end


def shifted_binarysearch_helper(array, target, left, right)
  if left > right
    return -1
  end

  middle = (left+right)/2
  potential_match = array[middle]
  left_num = array[left]
  right_num = array[right]

  if target == potential_match
    return middle
  elsif left_num <= potential_match
    if target < potential_match and target >= left_num
      return shifted_binarysearch_helper(array, target, left, middle - 1)
    else
      return shifted_binarysearch_helper(array, target, middle + 1, right)
    end
  else
    if target > potential_match and target <= right_num
      return shifted_binarysearch_helper(array, target, middle + 1, right)
    else
      return shifted_binarysearch_helper(array, target, left, middle - 1)
    end
  end

end


# itterative
# O(log(n)) T | O(1) S
def shifted_binary_search(array, target)
  return shifted_binarysearch_helper(array, target, 0, array.length - 1)
end


def shifted_binarysearch_helper(array, target, left, right)

  while left <= right
    middle = (left+right)/2
    potential_match = array[middle]
    left_num = array[left]
    right_num = array[right]

    if target == potential_match
      return middle
    elsif left_num <= potential_match
      if target < potential_match and target >= left_num
        right = middle - 1
      else
        left = middle + 1
      end
    else
      if target > potential_match and target <= right_num
        left = middle + 1
      else
        right= middle - 1
      end
    end
  end
  return -1
end


array = [45, 61, 71, 72, 73, 0, 1, 21, 33, 37]
puts "Should output true: #{shifted_binary_search(array, 33) == 8}"