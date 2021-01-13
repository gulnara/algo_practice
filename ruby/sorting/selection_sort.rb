 # O(n^2) T | O(1) S

def selection_sort(array)
  pointer = 0
  while pointer < array.length - 1 do 
    smallest_index = pointer
    for i in (pointer + 1)..(array.length - 1)
      if array[smallest_index] > array[i]
        smallest_index = i
      end
    end
    swap(pointer, smallest_index, array)
    pointer += 1
  end
  return array
end

def swap(i,j,array)
  array[i], array[j] = array[j], array[i]
end


array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]
actual = selection_sort(array)
puts "Should output true: #{actual == expected}"