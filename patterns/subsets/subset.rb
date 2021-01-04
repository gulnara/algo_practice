# Given a set with distinct elements, find all of its distinct subsets.


# Input: [1, 3]
# Output: [], [1], [3], [1,3]

# O(N∗2^N) T S


def find_subsets(nums)
	subsets =[]
	subsets.append([])

	for current_num in nums 
		1
		3
		n = subsets.length
		1
		2
		for i in 0..(n - 1)
			set1 = Array.new(subsets[i])
			[]
			[]
			[1]
			set1.append(current_num)
			[1]
			[3]
			[1,3]
			subsets.append(set1)
			[[],[1],[3], [1,3]]
		end
	end

	return subsets
end

puts "Here is the list of subsets: " + find_subsets([1, 3]).to_s
# puts "Here is the list of subsets: " + find_subsets([1, 5, 3]).to_s
