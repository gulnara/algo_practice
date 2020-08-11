
# O(n) T | O(n) S

def spiral_traverse(array)
  result = []
  start_row, end_row = 0 , (array.length - 1)
  start_col, end_col = 0, (array[0].length - 1)

  while (start_row <= end_row) && (start_col <= end_col) do 

    for col in start_col..end_col do
      result.append(array[start_row][col])
    end

    for row in (start_row+1)..end_row do
      result.append(array[row][end_col])
    end

    for col in (end_col-1).downto(start_col) do
      if start_row == end_row
        break
      end
      result.append(array[end_row][col])
    end

    for row in (end_row-1).downto(start_row+1) do
      if start_col == end_col
        break
      end
      result.append(array[row][start_col])
    end

    start_col +=1
    end_col -= 1
    start_row += 1 
    end_row -= 1 
  end

  return result
end



array = [[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]]
expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
actual = spiral_traverse(array)
# puts actual
puts "Should output true: #{actual == expected}"