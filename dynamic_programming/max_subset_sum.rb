# O(n) t | O(n) s

# maxsum[i] = [maxsum[i-1], maxsum[i-2] + array[i]]max

def max_subset_sum(array)
  if array.length == 0
    return
  elsif array.length == 1
    return array[0]
  end

  maxsums = [array[0]]
  maxsums[1] = [array[0], array[1]].max

  for i in 2..(array.length - 1)
    maxsums[i] = [maxsums[i-1], maxsums[i-2] + array[i]].max
  end

  return maxsums[-1]

end


# # O(n) t | O(1) s

def max_subset_sum(array)
  if array.length == 0
    return
  elsif array.length == 1
    return array[0]
  end

  first = array[0]
  second = [array[0], array[1]].max

  for i in 2..(array.length - 1)
    current = [second, first + array[i]].max
    first = second
    second = current
  end

  return second

end


array = [75, 105, 120, 75, 90, 135]
actual = max_subset_sum(array)
puts actual
puts "Should output true: #{ actual == 330}"