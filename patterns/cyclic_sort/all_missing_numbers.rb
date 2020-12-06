# We are given an unsorted array containing numbers taken from the range 1 to ‘n’. The array can have duplicates, which means some numbers will be missing. Find all those missing numbers.

# Input: [2, 3, 1, 8, 2, 3, 5, 1]
# Output: 4, 6, 7
# Explanation: The array should have all numbers from 1 to 8, due to duplicates 4, 6, and 7 are missing.

def find_missing_numbers(nums)

	i = 0

	while i < nums.length
		j = nums[i] - 1
		if nums[i] != nums[j]
			nums[i], nums[j] = nums[j], nums[i]
		else
			i += 1
		end
	end

	missing = []

	for i in 0..(nums.length-1)
		if nums[i] != i
			missing.append(nums[i])
		end
	end

	return missing
end

# puts find_missing_numbers([2, 3, 1, 8, 2, 3, 5, 1])
# puts find_missing_numbers([2, 4, 1, 2])
puts find_missing_numbers([2, 3, 2, 1])
