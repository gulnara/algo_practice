
# O(n^2) time | O(1) space
def longest_palindrome(string)
  current_longest = [0,1]

  for i in 1..string.length
    odd = get_longest_palindrome(string, i - 1, i + 1)
    even = get_longest_palindrome(string, i - 1, i)
    longest = odd[1] - odd[0] > even[1] - even[0] ? odd : even
    current_longest = current_longest[1] - current_longest[0] > longest[1] - longest[0] ? current_longest : longest
  end
  return string[current_longest[0]..current_longest[1]]
end

def get_longest_palindrome(string, left_idx, right_idx)
  while left_idx >= 0 and right_idx < string.length
    if string[left_idx] != string[right_idx]
      break
    end

    left_idx -= 1
    right_idx += 1
  end
  return [left_idx + 1, right_idx - 1]

end

string = "abaxyzzyxf"
puts "Should output true: #{longest_palindrome(string) == "xyzzyx"}"