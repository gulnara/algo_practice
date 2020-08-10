# O(n) T | O(1) S 
def move_element_to_end(array, to_move)

  left = 0
  right = array.length - 1


  while left < right
    while left < right && array[right] == to_move
      right -= 1
    end

    if array[left] == to_move
      array[left], array[right] = array[right], array[left]
    end
    left += 1
  end
  return array
end


array = [2, 1, 2, 2, 2, 3, 4, 2]
to_move = 2
expected = [4, 1, 3, 2, 2, 2, 2, 2]
actual = move_element_to_end(array, to_move)

puts "Should output true: #{actual == expected}"