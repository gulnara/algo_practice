# Given an array of sorted numbers, remove all duplicates from it. You should not use any extra space; after removing the duplicates in-place return the length of the subarray that has no duplicate in it.

# O(n) T | O(1) S
def remove_duplicates(arr)
  next_non_duplicate = 1
  i = 1

  while i < arr.length
    if arr[next_non_duplicate - 1] != arr[i]
      arr[next_non_duplicate] = arr[i]
      next_non_duplicate += 1
    end
    i += 1
  end
  return next_non_duplicate
end

puts remove_duplicates([2, 3, 3, 3, 6, 9, 9]) == 4
puts remove_duplicates([2, 2, 2, 11]) == 2
