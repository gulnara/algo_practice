# Given an array with positive numbers and a target number, find all of its contiguous subarrays whose product is less than the target number

# def find_subarrays(arr, target)
#   left = 0
#   result = []
#   product = 1


#   for right in 0..(arr.length - 1)
#     product += arr[right]

#     while product >= target and left < arr.length
#       product /= arr[left]
#       left += 1
#     end

#     temp = []

#     for i in left..(right)
#       puts arr[i]
#       temp.append(arr[i])
#       puts "#{temp}"
#       result.append(temp)
#     end
   

#   end
#   puts "#{result}"
#   return result

# end
def find_subarrays(arr, target)
  return 0 if target == 0
  left = 0
  result = 0
  product = 1

  for right in 0..(arr.length - 1)
    product *= arr[right]
    while product >= target
      product /= arr[left]
      left += 1
    end
    result += right - left + 1
  end
  puts result
  return result

end

find_subarrays([2, 5, 3, 10], 30)
# puts find_subarrays([2, 5, 3, 10], 30) == [[2], [5], [2, 5], [3], [5, 3], [10]]
# puts find_subarrays([8, 2, 6, 5], 50) == [[8], [2], [8, 2], [6], [2, 6], [5], [6, 5]]