
# O(n) T | O(1) s

def sub_array_sort(array)
  min_outoforder = 1.0 / 0
  max_outoforder = -1.0 / 0

  for i in (0..array.length - 1)
    num = array[i]

    if out_of_order(i, num, array)
      min_outoforder = [min_outoforder, num].min
      max_outoforder = [max_outoforder, num].max
    end
  end
  if min_outoforder == 1.0 / 0
    return [-1, -1]
  end

  sub_array_left = 0

  while min_outoforder >= array[sub_array_left]
    sub_array_left += 1
  end

  sub_array_right = array.length - 1
  while max_outoforder <= array[sub_array_right]
    sub_array_right -= 1
  end

  return [sub_array_left, sub_array_right]

end

def out_of_order(i, num, array)
  if i == 0
    return num > array[i + 1]
  end

  if i == (array.length - 1)
    return num < array[i - 1]
  end

  return num > array[i + 1] || num < array[i - 1]
end


array = [1, 2, 4, 7, 10, 11, 7, 12, 6, 7, 16, 18, 19]

puts  "Should output true: #{sub_array_sort(array) == [3, 9]}"

