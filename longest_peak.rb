# O(n) T | 
def longest_peak(array)

  longest_peak_length = 0
  i = 1

  while i < (array.length - 1)
    is_peak = array[i] > array[i-1] && array[i] > array[i+1]
    if !is_peak
      i += 1
      next
    end

    left_index = i - 2
    while left_index >= 0 && array[left_index] < array[left_index + 1]
      left_index -= 1
    end

    right_index = i + 2
    while right_index < array.length && array[right_index] < array[right_index - 1]
      right_index += 1
    end

    current_peak_length = right_index - left_index - 1
    longest_peak_length = [current_peak_length, longest_peak_length].max
    i = right_index
  end

  return longest_peak_length
end

array = [1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]
expected = 6
actual = longest_peak(array)
# puts actual
puts "Should output true: #{actual == expected}"


