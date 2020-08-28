# O (n + m) time | O(1) s
def search_in_sorted_matrix(matrix, target)
  row = 0 
  col = matrix[0].length - 1

  while row < matrix.length && col >= 0
    if matrix[row][col] > target
      col -= 1
    elsif matrix[row][col] < target
      row += 1
    else 
      return [row,col]
    end
  end

  return [-1, -1]

end

matrix = [
    [1, 4, 7, 12, 15, 1000],
    [2, 5, 19, 31, 32, 1001],
    [3, 8, 24, 33, 35, 1002],
    [40, 41, 42, 44, 45, 1003],
    [99, 100, 103, 106, 128, 1004],
]

actual = search_in_sorted_matrix(matrix, 44)
puts "Should output true: #{actual == [3,3]}"