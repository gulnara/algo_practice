# @param {String} s
# @param {Integer} k
# @return {String}
# def license_key_formatting(s, k)
#   new_string = ""
#   stripped_string = s.gsub("-","")

#   if stripped_string.length % k == 0
#     rest_sub_string = stripped_string
#   else
#     new_string = stripped_string[0..(stripped_string.length % k - 1)]
#     rest_sub_string = stripped_string[(stripped_string.length % k)..]
#   end

#   begin_index = 0
#   end_index = k - 1

#   while begin_index < rest_sub_string.length do
#     if new_string == ""
#       new_string = new_string + rest_sub_string[begin_index..end_index].upcase
#     else
#       new_string = new_string.upcase + "-" + rest_sub_string[begin_index..end_index].upcase
#     end 

#     begin_index = end_index + 1
#     end_index = begin_index + k - 1
#   end
 
#   return new_string
# end

def license_key_formatting(s, k)
  s.upcase.tr('-', '').reverse.scan(/.{1,#{k}}/).join('-').reverse
end

def license_key_formatting(s, k)
    s = s.split("-").join("").upcase()
    str = []
    num = s.size() % k
    str << s[0..num-1] if num > 0
    while num < s.size()
        str << s[num..num+k-1]
        num += k
    end
    str.join("-")
end

s = "a-a-a-a-"
k = 1

puts license_key_formatting(s, k)


