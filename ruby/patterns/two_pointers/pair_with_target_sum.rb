# Given an array of sorted numbers and a target sum, find a pair in the array whose sum is equal to the given target.

# Write a function to return the indices of the two numbers (i.e. the pair) such that they add up to the given target.

# O(n) T | O(1) S
def pair_with_targetsum(arr, target_sum)
  left = 0
  right = arr.length - 1

  while left < right do
    if arr[left] + arr[right] < target_sum
      left += 1
    elsif arr[left] + arr[right] > target_sum
      right -= 1
    elsif arr[left] + arr[right] == target_sum
      return [left, right]
    else
      return 'There is no pair of int that add up to target sum'
    end
  end
end

puts pair_with_targetsum([1, 2, 3, 4, 6], 6) == [1, 3]
puts pair_with_targetsum([2, 5, 9, 11], 11) == [0, 2]
