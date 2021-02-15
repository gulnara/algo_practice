def create_subarrays(arr, left, right)
temp = []
  if right == arr.length
    puts "#{temp}"
    return temp
  elsif left > right
    return create_subarrays(arr, 0, right + 1)
  else
    # puts "#{arr[left..right]}"
    temp += arr[left..right]
    puts "#{temp}"
    return create_subarrays(arr, left + 1, right)
  end

end

arr = [1, 2, 3] 
create_subarrays(arr, 0, 0)

# 0 0
# [1]
# 1 0
# 0 1
# [1,2]
# 1 1
# [2]
# 2 1
# 0 2
# [1,2,3]
# 1 2
# [2,3]
# 1 3
# return

