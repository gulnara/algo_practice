# O(n*n!) time | O(n*n!) space
def get_permutations(array)
  perms = []
  permutations_helper(0, array, perms)
  return perms

end

def permutations_helper(i, array, perms)
  if i == array.length - 1
    perms.append(array)
  else
    for j in i..(array.length - 1)
      swap(array, i, j)
      permutations_helper(i + 1, array, perms)
      swap(array, i, j)
    end
  end

end

def swap(array, i, j)
  array[i], array[j] = array[j], array[i]
end

perms = get_permutations([1, 2, 3])
puts "Should output true: #{perms.count == 6}"