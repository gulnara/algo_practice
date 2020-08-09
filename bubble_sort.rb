
# Best:  O(n) T | O(1) S - if array already sorted
# Average:  O(n^2) T | O(1) S
# Worst:  O(n^2) T | O(1) S

def bubble_sort(array)
  is_sorted = false
  counter = 0

  while not is_sorted do 
    is_sorted = true
    for i in 0..(array.length - 2 - counter)
      if array[i] > array[ i + 1]
        swap(i, i+1 , array)
        is_sorted = false
      end
    end
    counter += 1
  end

  return array
end

def swap(i,j,array)
  array[i], array[j] = array[j], array[i]
end




array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]
actual = bubble_sort(array)
puts actual
puts "Should output true: #{actual == expected}"