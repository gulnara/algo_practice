# Given an array of numbers sorted in an ascending order, find the ceiling of a given number ‘key’. The ceiling of the ‘key’ will be the smallest element in the given array greater than or equal to the ‘key’.

# Write a function to return the index of the ceiling of the ‘key’. If there isn’t any ceiling return -1.


# Input: [4, 6, 10], key = 6
# Output: 1
# Explanation: The smallest number greater than or equal to '6' is '6' having index '1'.

# Input: [1, 3, 8, 10, 15], key = 12
# Output: 4
# Explanation: The smallest number greater than or equal to '12' is '15' having index '4'.

# O(logn) T | O(1) S 

def search_ceiling_of_a_number(arr, key)

	start_index = 0
	end_index = arr.length - 1

	if key > arr[arr.length - 1]
		return -1
	end

	while start_index <= end_index
		mid = (start_index + end_index) / 2

		if key > arr[mid]
			start_index = mid + 1
		elsif key < arr[mid]
			end_index = mid - 1
		else
			return mid
		end
	end

	return start_index
end

puts "should return 1:  " + search_ceiling_of_a_number([4, 6, 10], 6).to_s
puts "should return 4:  " + search_ceiling_of_a_number([1, 3, 8, 10, 15], 12).to_s
puts "should return -1:  " + search_ceiling_of_a_number([4, 6, 10], 17).to_s
puts "should return 0:  " + search_ceiling_of_a_number([4, 6, 10], -1).to_s

