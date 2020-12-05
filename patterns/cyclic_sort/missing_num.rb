# We are given an array containing ‘n’ distinct numbers taken from the range 0 to ‘n’. Since the array has only ‘n’ numbers out of the total ‘n+1’ numbers, find the missing number.

# Input: [4, 0, 3, 1]
# Output: 2

def find_missing_number(nums)

	i, n = 0, nums.length
	while i < n
		j = nums[i]
		if nums[i] < n && nums[i] != nums[j]
			nums[i], nums[j] = nums[j], nums[i]
		else
			i += 1
		end
	end

	for i in 0..(n-1)
		if nums[i] != i
			return i
		end
	end

	return n

end

puts find_missing_number([4, 0, 3, 1])
puts find_missing_number([8, 3, 5, 2, 4, 6, 0, 1])
