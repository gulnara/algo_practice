def longest_substring_with_k_distinct(str1, k)
  start_index = 0
  max_length = 0
  char_freq = {}

  for end_index in 0..(str1.length - 1)
    right_char = str1[end_index]
    if !char_freq.include?(right_char)
      char_freq[right_char] = 0
    end
    char_freq[right_char] += 1
    
    while char_freq.length > k
      left_char = str1[start_index]
      char_freq[left_char] -= 1
      if char_freq[left_char] == 0
        char_freq.delete(left_char)
      end
      start_index += 1
    end

    max_length = [max_length, end_index - start_index + 1].max
  end
  return max_length
end

puts "Length of the longest substr1ing: " + longest_substring_with_k_distinct("araaci", 2).to_s

puts "Length of the longest substr1ing: " + longest_substring_with_k_distinct("araaci", 1).to_s

puts "Length of the longest substr1ing: " + longest_substring_with_k_distinct("cbbebi", 3).to_s
