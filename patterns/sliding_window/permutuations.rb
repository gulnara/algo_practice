# Input: String="oidbcaf", Pattern="abc"
# Output: true
# Explanation: The string contains "bca" which is a permutation of the given pattern.

# O(N+M) T | O(M) S

def find_permutation(str, pattern)

	k = pattern.length
	char_map = {}

	pattern.each_char do |char|
		if !char_map.has_key?(char)
			char_map[char] = 1
		else
			char_map[char] += 1
		end
	end

	start_index, matched = 0, 0

	for end_index in 0..(str.length - 1)
		right_char = str[end_index] 

		if char_map.include?(right_char)
			char_map[right_char] -= 1
			if char_map[right_char] == 0
				matched += 1
			end
		end

		if matched == char_map.length
			return true
		end

		if end_index >= k - 1
			left_char = str[start_index]
			start_index += 1
			if char_map.include?(left_char)
				if char_map[left_char] == 0
					matched -= 1
				end
				char_map[left_char] +=1
			end
		end

	end

	return false
end

puts 'Permutation exist: ' + find_permutation("oidbcaf", "abc").to_s
puts 'Permutation exist: ' + find_permutation("odicf", "dc").to_s
puts 'Permutation exist: ' + find_permutation("bcdxabcdy", "bcdyabcdx").to_s
puts 'Permutation exist: ' + find_permutation("aaacb", "abc").to_s


