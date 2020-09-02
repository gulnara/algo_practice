
# O(n) time | O(n) space
def largest_range(array)

  nums = {}
  best_range = []
  longest = 0

  for num in array
    nums[num] = true
  end

  for num in array
    if nums[num] == false
      next
    end

    nums[num] = false
    current_length = 1
    left = num - 1
    right = num + 1

    while nums.has_key?(left)
      nums[left] = false
      current_length += 1
      left -= 1
    end

    while nums.has_key?(right)
      nums[right] = false
      current_length += 1
      right += 1
    end

    if current_length > longest
      longest = current_length
      best_range = [left + 1, right - 1]
    end
  end

  return best_range

end


array = [1, 11, 3, 0, 15, 5, 2, 4, 10, 7, 12, 6]

puts  "Should output true: #{largest_range(array) == [0, 7]}"