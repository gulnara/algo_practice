# O(n) T | O(1) S

def find_three_largest_numbers(array)
  largest_three = [nil, nil, nil]

  array.each do |item|
    update_largest(largest_three, item)
  end

  return largest_three
end

def update_largest(largest_three, item)

  if largest_three[2].nil? || item > largest_three[2]
    shift_and_update(largest_three, item, 2)
  elsif largest_three[1].nil? || item > largest_three[1]
    shift_and_update(largest_three, item, 1)
  elsif largest_three[0].nil? || item > largest_three[0]
    shift_and_update(largest_three, item, 0)
  end

end

def shift_and_update(array, num, idx)
  for i in 0..idx
    if i == idx
      array[i] = num
    else
      array[i] = array[i+1]
    end
  end

end


array = [141, 1, 17, -7, -17, -27, 18, 541, 8, 7, 7]
expected = [18, 141, 541]

# array = [141, 1, 17, -7]
# expected = [1, 17, 141]

actual = find_three_largest_numbers(array)
puts "Should output true: #{actual == expected}"

