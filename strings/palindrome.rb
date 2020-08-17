
#  O(n^2) T | O(n) S
# def is_palindrome(string)
#   reversed_string = ""
#   for i in (string.length-1).downto(0) do
#     puts i
#     reversed_string += string[i]
#   end
#   return string == reversed_string

# end

#  O(n) T | O(n) S
# def is_palindrome(string)
#   reversed_chars = []
#   for i in (string.length-1).downto(0) do
#     reversed_chars.append(string[i])
#   end
#   return string == reversed_chars.join

# end


#  O(n) T | O(n) S
# def is_palindrome(string, i = 0)
#   j = string.length - 1 - i
#   if i >= j 
#     return true
#   else 
#     string[i] == string[j] && is_palindrome(string, i + 1)
#   end
# end


#  O(n) T | O(1) S
def is_palindrome(string)
  left_idx = 0
  right_idx = string.length - 1

  while left_idx < right_idx
    if string[left_idx] != string[right_idx]
      return false
    end
    left_idx +=1
    right_idx -=1
  end

  return true
end



string1 = "abcdcba"
actual1 = is_palindrome(string1)
puts "Should output true: #{actual1}"

string2 = "abckpl"
actual2 = is_palindrome(string2)
puts "Should output false: #{actual2}"

