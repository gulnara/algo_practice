# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  new_string = ""
  stripped_string = s.gsub("-","")

  if stripped_string.length % k == 0
    rest_sub_string = stripped_string
  else
    new_string = stripped_string[0..(stripped_string.length % k - 1)]
    rest_sub_string = stripped_string[(stripped_string.length % k)..]
  end

  begin_index = 0
  end_index = k - 1

  while begin_index < rest_sub_string.length do
    if new_string == ""
      new_string = new_string + rest_sub_string[begin_index..end_index].upcase
    else
      new_string = new_string.upcase + "-" + rest_sub_string[begin_index..end_index].upcase
    end 

    begin_index += k
    end_index = begin_index + k
  end
 

  return new_string
end

s = "2-5g-3-J"
k = 2

puts license_key_formatting(s, k)


