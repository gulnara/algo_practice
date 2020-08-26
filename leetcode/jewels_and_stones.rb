# O(j*s) time | O(1) space
def num_jewels_in_stones(j, s)
    total_jewels = 0
    for i in 0..(s.length - 1)
        if j.include?(s[i])
          total_jewels += 1
          i += 1
        end
    end
    return total_jewels
    
end

def num_jewels_in_stones(j, s)
    total_jewels = 0
    j = j.each_char.to_set
    for i in 0..(s.length - 1)
        if j.include?(s[i])
          total_jewels += 1
          i += 1
        end
    end
    return total_jewels
    
end


j = "aA"
s = "aAAbbbb"
expected = 3
puts "Should output true: #{num_jewels_in_stones(j, s) == expected}"