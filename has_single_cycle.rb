
# O(n) time | O(1)) space
def has_single_cycle(array)

  num_element_visited = 0
  current_idx = 0
  while num_element_visited < array.length
    if num_element_visited > 0 and  current_idx == 0
      return false
    end
    num_element_visited += 1
    current_idx = get_next_idx(current_idx, array)
  end
  return current_idx == 0

end

def get_next_idx(current_idx, array)
  jump = array[current_idx]
  next_idx = (current_idx + jump) % array.length
  
  if next_idx >= 0 
    return next_idx 
  else 
    return next_idx + array.length
  end
end

array = [2, 3, 1, -4, -4, 2]

puts "Should output true: #{has_single_cycle(array) == true}"