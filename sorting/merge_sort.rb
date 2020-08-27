# O(nlog(n)) time & space

# def merge_sort(array)
#   if array.length <= 1
#     return array
#   end

#   mid_idx = array.length / 2
#   left_half = array.slice(0...mid_idx)
#   right_half = array.slice(mid_idx...array.length)

#   return merge_sorted_arrays(merge_sort(left_half), merge_sort(right_half))
# end

# def merge_sorted_arrays(left_half, right_half)

#   sorted_array = [nil] * (left_half.length + right_half.length)
#   k = i = j = 0

#   while i < left_half.length && j < right_half.length
#     if left_half[i] <= right_half[j]
#       sorted_array[k] = left_half[i]
#       i += 1
#     else
#       sorted_array[k] = right_half[j]
#       j += 1
#     end

#     k += 1
#   end

#   while i < left_half.length
#     sorted_array[k] = left_half[i]
#     i += 1
#     k += 1
#   end

#   while j < right_half.length
#     sorted_array[k] = right_half[j]
#     j += 1
#     k += 1
#   end

#   return sorted_array

# end


# option 2
# https://medium.com/@allegranzia/merge-sort-in-ruby-102b750af287
def merge_sort(unsorted_array) 
    # if array only has one element or fewer there is nothing to do
    if unsorted_array.length <=1 
        return unsorted_array
    else 
        # dividing and then merge-sorting the halves
        mid = unsorted_array.length/2
        merge(merge_sort(unsorted_array.slice(0...mid)), merge_sort(unsorted_array.slice(mid...unsorted_array.length)))
    end 
end

def merge(left_array, right_array)
    sorted_array = []
    # If either array is empty we don't need to compare them
    while !left_array.empty? && !right_array.empty? do
        # we are shifting out the compared/used values so we don't repeat
        if left_array[0] < right_array[0]
            sorted_array.push(left_array.shift)
        else   
            sorted_array.push(right_array.shift)
        end
    end 
    #concat appends elements of another array to an array
    return sorted_array.concat(left_array).concat(right_array)
end


array = [8, 5, 2, 9, 5, 6, 3]
expected = [2, 3, 5, 5, 6, 8, 9]

puts "Should output true: #{merge_sort(array) == expected}"

