# Given an array containing 0s and 1s, if you are allowed to replace no more than ‘k’ 0s with 1s, find the length of the longest contiguous subarray having all 1s.

def length_of_longest_substring(arr, k)

  start_index, max_length, max_ones = 0, 0, 0

  for end_index in 0..(arr.length - 1)
    if arr[end_index] == 1
      max_ones += 1
    end

    if (end_index - start_index + 1 - max_ones) > k
      if arr[start_index] == 1
        max_ones -= 1
      end
      start_index += 1
    end

    max_length = [max_length, end_index - start_index + 1].max
  end

  return max_length
end


puts length_of_longest_substring([0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], 2) == 6
puts length_of_longest_substring([0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1], 3) == 9