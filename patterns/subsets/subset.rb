# Given a set with distinct elements, find all of its distinct subsets.


# Input: [1, 3]
# Output: [], [1], [3], [1,3]


def find_subsets(nums)
	subsets =[]
	subsets.append([])

	for current_num in nums
		n = subsets.length
		for i in 0..(n - 1)
			set1 = Array.new(subsets[i])
			set1.append(current_num)
			subsets.append(set1)
		end
	end

	return subsets
end

puts "Here is the list of subsets: " + find_subsets([1, 3]).to_s
puts "Here is the list of subsets: " + find_subsets([1, 5, 3]).to_s
