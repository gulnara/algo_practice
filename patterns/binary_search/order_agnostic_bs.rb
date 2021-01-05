# Given a sorted array of numbers, find if a given number ‘key’ is present in the array. Though we know that the array is sorted, we don’t know if it’s sorted in ascending or descending order. You should assume that the array can have duplicates.

# Write a function to return the index of the ‘key’ if it is present in the array, otherwise return -1.


# Input: [4, 6, 10], key = 10
# Output: 2

# Input: [10, 6, 4], key = 10
# Output: 0

def binary_search(arr, key)

	start_index = 0
	end_index = arr.length - 1

	while start_index < end_index

		mid = (start_index + end_index) / 2

		if arr[mid] == key
			return arr[mid]
		elsif arr[mid] > key
			end_index -= 1
		else
			start_index += 1
		end
	end
	return -1
end


puts binary_search([4, 6, 10], 10)
puts binary_search([1, 2, 3, 4, 5, 6, 7], 5)
puts binary_search([10, 6, 4], 10)
puts binary_search([10, 6, 4], 4)
