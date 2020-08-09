# O(n) T | O(d) S
def product_sum(input, depth = 1)
  sum = 0
  input.each do |element|
    if element.kind_of?(Array)
      sum += product_sum(element, depth + 1)
    else
      sum += element
    end
  end

  return sum * depth

end


input = [5, 2, [7, -1], 3, [6, [-13, 8], 4]]
expected = 12
actual = product_sum(input)

puts "Should output true: #{actual == expected}"