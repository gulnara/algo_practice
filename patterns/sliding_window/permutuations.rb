# Input: String="oidbcaf", Pattern="abc"
# Output: true
# Explanation: The string contains "bca" which is a permutation of the given pattern.


def find_permutation(str, pattern)

	k = pattern.length
	char_map = {}

	pattern.each_char do |char|
		if !char_map.has_key(char)
			char_map[key] = 1
		else
			char_map[key] += 1
		end
	end

	

end

str = "oidbcaf"
pattern = "abc"
puts "permutation exists: #{find_permutation(str, pattern).to_s} "