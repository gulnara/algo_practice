
# O(n*2^n) time and space
def powerset(array)
  subsets = [[]]
  for item in array 
    for i in 0..(subsets.length - 1)
      current_subset = subsets[i]
      subsets.append(current_subset + [item])
    end
  end
  return subsets
end

array = [1, 2, 3]
powersets = powerset(array)
# puts powersets
puts "Should output true: #{powersets.count == 8}"