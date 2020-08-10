# O(n^2) T | O(n) S

def three_num_sum(array, target_sum)
  array.sort!
  triplets = []

  for i in 0..(array.length - 2)
    left = i + 1
    right = array.length - 1
    while left < right
      current_sum = array[i] + array[left] + array[right]
      if current_sum == target_sum
        triplets.append([array[i], array[left], array[right]])
        left +=1
        right -=1
      elsif current_sum < target_sum
        left += 1
      elsif current_sum > target_sum
        right -= 1
      end
    end
  end

  return triplets
end

array = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
expected = [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]
actual = three_num_sum(array, target_sum)
puts "Should output true: #{actual == expected}"