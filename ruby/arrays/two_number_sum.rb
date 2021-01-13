array = [3, 5, -4, 8, 11, 1, -1, 6]
target_sum = 10

# O(n)TS
def two_number_sum1(array, target_sum)
  nums = {}

  array.each do |number|
    potential_match = target_sum - number
    if nums.key?(potential_match)
      return [potential_match, number]
    else
      nums[number] = true
    end
  end

  return []
end


puts "#{two_number_sum1(array, target_sum)}"



# O(nlg(n)) T, O(1) S
def two_number_sum2(array, target_sum)
  array.sort()

  left = 0
  right = array.length - 1

  while left < right
    current_sum = array[left] + array[right]
      if current_sum == target_sum
        return [array[left], array[right]]
      elsif current_sum < target_sum
        left += 1
      elsif current_sum > target_sum
        right -= 1
      end
  end

  return []
end

puts "#{two_number_sum2(array, target_sum)}"