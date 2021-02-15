
# Best:  O(n) T | O(1) S - if array already sorted
# Average:  O(n^2) T | O(1) S
# Worst:  O(n^2) T | O(1) S

def insert_sort(array)
  for i in 1..(array.length - 1)
    j = i
    while j > 0 && array[j] < array[j - 1]
      swap(j, j-1, array)
      j -= 1
    end
  end
  return array

end

def swap(i,j,array)
  array[i], array[j] = array[j], array[i]
end

array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]
actual = insert_sort(array)
puts "Should output true: #{actual == expected}"