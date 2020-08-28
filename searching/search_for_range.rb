# recursive
# O(log(n)) T S
# def search_for_range(array, target)
#   final_range = [-1, -1]

#   altered_binary_search(array, target, 0, array.length - 1, final_range, true)
#   altered_binary_search(array, target, 0, array.length - 1, final_range, false)
#   return final_range
# end


# def altered_binary_search(array, target, left, right, final_range, go_left)

#   if left > right
#     return
#   end

#   mid = (left + right) / 2

#   if array[mid] < target
#     altered_binary_search(array, target, mid + 1, right, final_range, go_left)
#   elsif array[mid] > target
#     altered_binary_search(array, target, left, mid - 1, final_range, go_left)
#   else
#     if go_left
#       if mid == 0 or array[mid - 1] != target
#         final_range[0] = mid
#       else
#         altered_binary_search(array, target, left, mid - 1, final_range, go_left)
#       end
#     else
#       if mid == array.length - 1 or array[mid + 1] != target
#         final_range[1] = mid
#       else
#         altered_binary_search(array, target, mid + 1, right, final_range, go_left)
#       end
#     end
#   end

# end
# itterative
# O(log(n)) T | O(1) S
def search_for_range(array, target)
  final_range = [-1, -1]

  altered_binary_search(array, target, 0, array.length - 1, final_range, true)
  altered_binary_search(array, target, 0, array.length - 1, final_range, false)
  return final_range
end


def altered_binary_search(array, target, left, right, final_range, go_left)

  while left <=right
    mid = (left + right) / 2

    if array[mid] < target
      left = mid + 1
    elsif array[mid] > target
      right = mid - 1
    else
      if go_left
        if mid == 0 or array[mid - 1] != target
          final_range[0] = mid
          return
        else
          right = mid - 1
        end
      else
        if mid == array.length - 1 or array[mid + 1] != target
          final_range[1] = mid
          return
        else
          left = mid + 1
        end
      end
    end
  end

end




array = [0, 1, 21, 33, 45, 45, 45, 45, 45, 45, 61, 71, 73]
puts "Should output true: #{search_for_range(array, 45) == [4,9]}"


