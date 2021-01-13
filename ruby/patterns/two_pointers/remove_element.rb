# This problem is quite similar to our parent problem. We can follow a two-pointer approach and shift numbers left upon encountering the ‘key’. Here is what the code will look like

# O(n) T | O(1) S
def remove_element(arr, key)
  next_element = 0

  for i in 0..(arr.length - 1) 
    if arr[i] != key
      arr[next_element] = arr[i]
      next_element += 1
    end

  end
  return next_element
end

puts remove_element([3, 2, 3, 6, 3, 10, 9, 3], 3) == 4
puts remove_element([2, 11, 2, 2, 1], 2) == 2