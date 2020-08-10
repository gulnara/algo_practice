
# O(nlog(n)+ mlog(m)) T | O(1) S
def smallest_diff(array1, array2)
  array1.sort!
  array2.sort!

  idx_one = 0
  idx_two = 0

  smallest = Float::INFINITY
  current = Float::INFINITY

  smallest_pair = []

  while idx_one < array1.length && idx_two < array2.length
    first_num = array1[idx_one]
    second_num = array2[idx_two]
    if first_num < second_num
      current = second_num - first_num
      idx_one += 1
    elsif second_num < first_num
      current = first_num - second_num
      idx_two += 1
    else
      return [first_num, second_num]
    end

    if smallest > current
      smallest = current
      smallest_pair = [first_num, second_num]
    end
  end

  return smallest_pair

end


array1 = [-1, 5, 10, 20, 28, 3]
array2 = [26, 134, 135, 15, 17]
expected = [28, 26]
actual = smallest_diff(array1, array2)
puts actual
puts "Should output true: #{actual == expected}"