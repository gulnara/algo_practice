# O(n) t | O(n) s

# maxsum[i] = [maxsum[i-1], maxsum[i-2] + array[i]]max

# def max_subset_sum(array)
#   if array.length == 0
#     return
#   elsif array.length == 1
#     return array[0]
#   end

#   maxsums = [array[0]]
#   maxsums[1] = [array[0], array[1]].max

#   for i in 2..(array.length - 1)
#     maxsums[i] = [maxsums[i-1], maxsums[i-2] + array[i]].max
#   end

#   return maxsums[-1]

# end


# # O(n) t | O(1) s

def max_subset_sum(array)
  if array.length == 0
    return
  elsif array.length == 1
    return array[0]
  end

  second = array[0]
  first = [array[0], array[1]].max

  for i in 2..(array.length - 1)
    current = [first, second + array[i]].max
    second = first
    first = current
  end

  return first

end


array = [75, 105, 120, 75, 90, 135]
actual = max_subset_sum(array)
puts actual
puts "Should output true: #{ actual == 330}"