# We are given an unsorted array containing ‘n’ numbers taken from the range 1 to ‘n’. The array has some numbers appearing twice, find all these duplicate numbers without using any extra space.

# Input: [3, 4, 4, 5, 5]
# Output: [4, 5]

def find_all_duplicates(nums)

	i = 0 

	while i < nums.length
		j = nums[i] - 1
		if nums[i] != nums[j]
			nums[i], nums[j] = nums[j], nums[i]
		else
			i += 1
		end

	end

	dups = []

	for i in 0..(nums.length - 1) do 
		if nums[i] != i + 1
			dups.append(nums[i])
		end
	end

	return dups 
end

puts find_all_duplicates([3, 4, 4, 5, 5])
