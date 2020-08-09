def find_max_sliding_window (arr, window_size)
  result = []

  if (arr.length == 0)
    return
  end
  
  if (window_size > arr.length)
    return
  end

  window_ = []
  #find out max for first window
  for i in 0 .. window_size-1
    while (window_.length > 0 && arr[i] >= arr[window_[window_.length - 1]])
      window_.pop()
    end

    window_.push(i)
  end

  result.push(arr[window_[0]])

  for i in window_size .. arr.length-1
    # remove all numbers that are smaller than current number
    # from the tail of list
    while (window_.length > 0 && arr[i] >= arr[window_[window_.length - 1]])
      window_.pop()
    end

    #remove first number if it doesn't fall in the window anymore
    if (window_.length > 0 && (window_[0] <= i - window_size))
      window_.shift()
    end

    window_.push(i)
    result.push(arr[window_[0]])
  end

  return result
end


def main()
  array = [1,2,3,4,5,6,7,8,9,10]  
  puts "Array = " + array.to_s
  res = find_max_sliding_window(array, 3)
  puts "Max = " + res.to_s
  
  array1 = [10, 6, 9, -3, 23, -1, 34, 56, 67, -1, -4, -8, -2, 9, 10, 34, 67]
   puts "Array = " + array1.to_s
  res1 = find_max_sliding_window(array1, 3)
  puts "Max = " + res1.to_s
end  

main