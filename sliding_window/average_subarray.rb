def find_averages_of_subarrays(k, arr)
  result = []
  sum = 0.0
  start_index = 0

  for end_index in 0..(arr.length - 1)
    sum += arr[end_index]
    if end_index >= k - 1
      result.append(sum / k)
      sum -= arr[start_index]
      start_index += 1
    end
  end

  return result
end


result = find_averages_of_subarrays(5, [1, 3, 2, 6, -1, 4, 1, 8, 2])
puts "Averages of subarrays of size K: " + result.to_s