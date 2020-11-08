def create_subarrays(arr, left, right)

  if right == arr.length
    return
  elsif left > right
    return create_subarrays(arr, 0, right + 1)
  else
    puts "#{arr[left..right]}"
    return create_subarrays(arr, left + 1, right)
  end
end

arr = [1, 2, 3] 
create_subarrays(arr, 0, 0)