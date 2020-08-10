# O(n) T | O(1) S
def is_monotonic(array)
  if array.length <= 2
    return true
  end

  direction = array[1] - array[0]

  for i in 2..(array.length-1)
    if direction == 0
      direction = array[i] - array[i-1]
      next
    end

    if breaks_direction(direction, array[i-1], array[i])
      return false
    end
  end
  return true

end


def breaks_direction(direction, previous_int, current_int)
  difference = current_int - previous_int
  if direction > 0 
    return difference < 0
  end
  return difference > 0
end



# O(n) T | O(1) S
# def is_monotonic(array)
#   is_non_decreasing = true
#   is_non_increasing = true

#   for i in 1..(array.length - 1)
#     if array[i] < array[i - 1]
#       is_non_decreasing = false
#     end

#     if array[i] > array[i - 1]
#       is_non_increasing = false
#     end
#   end

#   return is_non_increasing || is_non_decreasing

# end

array = [-1, -5, -10, -1100, -1100, -1101, -1102, -9001]
expected = true
actual = is_monotonic(array)

puts "Should output true: #{actual == expected}"