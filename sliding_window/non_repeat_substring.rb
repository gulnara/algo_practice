# Given a string, find the length of the longest substring which has no repeating characters.
def non_repeat_substring(str)
  distinct_chars = {}
  start_index = 0
  max_length = 0

  for end_index in 0..(str.length - 1)
    right_char = str[end_index]

    if distinct_chars.include?(right_char)
      start_index = [start_index, distinct_chars[right_char] + 1].max
    end
    distinct_chars[right_char] = end_index
    max_length = [max_length, end_index - start_index + 1].max
  end

  return max_length
end


puts "Length of the longest substring: aabccbb = 3 #{(non_repeat_substring("aabccbb") == 3)}"
puts "Length of the longest substring: abbbb = 2 #{(non_repeat_substring("abbbb") == 2)}"
puts "Length of the longest substring: abccde = 3 #{(non_repeat_substring("abccde") == 3)}"
