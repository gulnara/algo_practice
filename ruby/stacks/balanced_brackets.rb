
# O(n) time and space
def balanced_brackets(string)
  opening_brackets = "([{"
  closing_brackets = ")]}"
  matching_brackets = {")" => "(", "]" => "[", "}" => "{"}
  stack = []

  string.each_char { |char| 

    if opening_brackets.include?(char)
      stack.append(char)
    elsif closing_brackets.include?(char)
      if stack.length == 0
        return false
      end
      if stack[-1] == matching_brackets[char]
        stack.pop
      else
        return false
      end
    end

  }

  return stack.length == 0


end


# string = "()"
string = "([])(){}(())()()"
puts "Should output true: #{balanced_brackets(string) == true}"
