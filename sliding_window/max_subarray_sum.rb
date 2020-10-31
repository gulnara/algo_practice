# Given an array of positive numbers and a positive number ‘k’, find the maximum sum of any contiguous subarray of size ‘k’.

# O(n) T| O(1) S
def max_sub_array_of_size_k(k, arr)
  max_sum, sum = 0, 0
  start_index = 0

  for end_index in 0..(arr.length - 1)
    sum += arr[end_index]
    if end_index >= k - 1
      max_sum = [max_sum, sum].max
      sum -= arr[start_index]
      start_index += 1
    end
  end

  return max_sum
end


puts "Maximum sum of a subarray of size K: " + max_sub_array_of_size_k(3, [2, 1, 5, 1, 3, 2]).to_s
puts "Maximum sum of a subarray of size K: " + max_sub_array_of_size_k(2, [2, 3, 4, 1, 5]).to_s
