# Given a set of numbers that might contain duplicates, find all of its distinct subsets.

# Input: [1, 3, 3]
# Output: [], [1], [3], [1,3], [3,3], [1,3,3]


def find_subsets(nums)
	sorted_nums = nums.sort()

	subsets = []
	subsets.append([])

	start_index, end_index = 0, 0

	for i in 0..(nums.length - 1)
		start_index = 0
		0
		0
		if i > 0 and nums[i] == nums[i - 1]
			start_index = end_index + 1
		end

		end_index = subsets.length - 1
		0
		1
		for j in start_index..end_index
			subset1 = Array.new(subsets[j])
			[]
			[]
			subset1.append(nums[i])
			[1]
		[3]
			subsets.append(subset1)
			[[],[1],[3]]
		end
	end

	return subsets
end


puts "Here is the list of subsets: " + find_subsets([1, 3, 3]).to_s
puts "Here is the list of subsets: " + find_subsets([1, 5, 3, 3]).to_s
