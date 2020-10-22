
def matching_brackets(string)
  open_brackets = '{[('
  close_brackets = '}])'
  open_to_close = {'}' => '{', ']' => '[', ')' => '('}
  stack = []

  if string == ""
    return true
  end

  string.each_char do |char|
    if open_brackets.include?(char)
      stack.push(char)
    elsif close_brackets.include?(char)
      if stack[-1] = open_to_close[char]
        stack.pop()
      else
        return false
      end
    end
  end

  return stack.length == 0
end

s = "()[]{}"
puts matching_brackets(s)