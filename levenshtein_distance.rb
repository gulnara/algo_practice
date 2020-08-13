# E
#   "" y a b d
# "" 0 1 2 3 4
# a  1 1 1 2 3
# b  2 2 2 1 2
# c  3 3 3 2 2

# if str[r-1] == str2[c-1]
#   E[r][c] = E[r-1][c-1]
# else
#   E[r][c] = 1+ min(E[r][c-1], E[r-1][c], E[r-1][c-1])


# O(nm) time | O(nm) space
def levenshtein_distance(str1, str2)

end


str1 = "abc"
str2 = "yabd"

puts "Should output true: #{levenshtein_distance(str1, str2) == 2}"