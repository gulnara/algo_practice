# O(n)T, O(1)S

def is_valid_subsequence(array, sequence)
  seq_index = 0
  arr_index = 0
  
  while arr_index < array.length && seq_index < sequence.length
    if array[arr_index] == sequence[seq_index]
      seq_index += 1
    end
    arr_index += 1
    
  end

  return seq_index == sequence.length

end


array1 = [5, 1, 22, 25, 6, -1, 8, 10]
sequence1 = [1, 6, -1, 10]

array2 = [5, 1, 22, 25, 6, -1, 8, 10]
sequence2 = [10, -1, 6]

puts "Should return True: #{is_valid_subsequence(array1,sequence1)}"

puts "Should return False: #{is_valid_subsequence(array2,sequence2)}"