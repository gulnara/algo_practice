# Given an array of positive numbers and a positive number ‘S’, find the length of the smallest contiguous subarray whose sum is greater than or equal to ‘S’. Return 0, if no such subarray exists.

def smallest_subarray_with_given_sum(s, arr)
  window_sum = 0 
  min_length = Float::INFINITY
  start_index = 0

  for end_index in 0..(arr.length - 1)
    window_sum += arr[end_index]

    while window_sum >= s
      min_length = [min_length, end_index - start_index + 1].min
      window_sum -= arr[start_index]
      start_index += 1
    end
  end
  return min_length
end

puts "Smallest subarray length: " + smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 3, 2]).to_s

puts "Smallest subarray length: " + smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 8]).to_s

puts "Smallest subarray length: " + smallest_subarray_with_given_sum(8, [3, 4, 1, 1, 6]).to_s
