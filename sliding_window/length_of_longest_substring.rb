# Given a string with lowercase letters only, if you are allowed to replace no more than ‘k’ letters with any letter, find the length of the longest substring having the same letters after replacement.

def length_of_longest_substring(str, k)
  start_index, max_length, max_repeat_letter_count = 0, 0 , 0
  char_freq = {}

  for end_index in 0..(str.length - 1)
    right_char = str[end_index]

    if !char_freq.include?(right_char)
      char_freq[right_char] = 0
    end
    char_freq[right_char] += 1

    max_repeat_letter_count = [max_repeat_letter_count, char_freq[right_char]].max

    # Current window size is from window_start to window_end, overall we have a letter which is
    # repeating 'max_repeat_letter_count' times, this means we can have a window which has one letter
    # repeating 'max_repeat_letter_count' times and the remaining letters we should replace.
    # if the remaining letters are more than 'k', it is the time to shrink the window as we
    # are not allowed to replace more than 'k' letters

    if (end_index - start_index + 1 - max_repeat_letter_count) > k
      left_char = str[start_index]
      char_freq[left_char] -= 1
      start_index += 1
    end

    max_length = [max_length, end_index - start_index + 1].max
  end
  return max_length
end

puts length_of_longest_substring("aabccbb", 2) == 5
puts length_of_longest_substring("abbcb", 1) == 4
puts length_of_longest_substring("abccde", 1) == 3