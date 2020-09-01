# O(n^2) T S
def four_num_sum(array, target)

  all_pair_sums = {}
  quadruplets = []

  for i in 1..(array.length - 2)
    for j in (i+1)..(array.length - 1)
      current_sum = array[i] + array[j]
      difference = target - current_sum
      if all_pair_sums.has_key?(difference)
        for pair in all_pair_sums[difference]
          quadruplets.append(pair + [array[i], array[j]])
        end
      end
    end

    for k in 0..i
      current_sum = array[i] + array[k]
      if !all_pair_sums.has_key?(current_sum)
        all_pair_sums[current_sum] = [[array[k], array[i]]]
      else
        all_pair_sums[current_sum].append([array[k], array[i]])
      end
    end
  end

  return quadruplets

end



array = [7, 6, 4, -1, 1, 2]
target = 16
expected = [[7, 6, 4, -1], [7, 6, 1, 2]]

puts "#{four_num_sum(array, target) == expected}"