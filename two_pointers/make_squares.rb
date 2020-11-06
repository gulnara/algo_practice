# Given a sorted array, create a new array containing squares of all the number of the input array in the sorted order.


def make_squares(arr)
  left = 0
  right = arr.length - 1
  squares = Array.new(arr.length, 0)
  last = squares.length - 1

  while left < right do
    left_sq = arr[left] * arr[left]
    right_sq = arr[right] * arr[right]

    if left_sq > right_sq
      squares[last] = left_sq
      left += 1
      last -= 1
    elsif left_sq < right_sq
      squares[last] = right_sq
      right -= 1
      last -= 1
    elsif left_sq == right_sq
      squares[last] = left_sq
      last -= 1
      squares[last] = right_sq
      last -= 1
      right -= 1
      left += 1
    end
  end

  return squares

end

puts make_squares([-2, -1, 0, 2, 3]) == [0, 1, 4, 4, 9]
puts make_squares([-3, -1, 0, 1, 2]) == [0, 1, 1, 4, 9]
