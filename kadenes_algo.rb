

# maxEndingHere = max(maxEndingHere + num, num)
# maxSoFar = max(maxSoFar, maxEndingHere )

# O(n) time | O(1) space
def kadenes_algo(array)
  max_ending_here = array[0]
  max_so_far = array[0]

  for num in array
    max_ending_here = [num, max_ending_here + 1].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  return max_so_far

end

array = [3, 5, -9, 1, 3, -2, 3, 4, 7, 2, -9, 6, 3, 1, -5, 4]

puts "Should output true: #{kadenes_algo(array) == 19}"