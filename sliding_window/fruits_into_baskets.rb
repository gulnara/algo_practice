# Given an array of characters where each character represents a fruit tree, you are given two baskets and your goal is to put maximum number of fruits in each basket. The only restriction is that each basket can have only one type of fruit.

# You can start with any tree, but once you have started you can’t skip a tree. You will pick one fruit from each tree until you cannot, i.e., you will stop when you have to pick from a third fruit type.

# Write a function to return the maximum number of fruits in both the baskets.


def fruits_into_baskets(fruits)

  fruit_baskets = {}
  start_index = 0
  max_length = 0

  for end_index in 0..(fruits.length - 1)
    fruit = fruits[end_index]
    if !fruit_baskets.include?(fruit)
      fruit_baskets[fruit] = 0
    end
    fruit_baskets[fruit] =+ 1

    while fruit_baskets.length > 2
      left_fruit = fruits[start_index]
      fruit_baskets[left_fruit] -= 1
      if fruit_baskets[left_fruit] == 0
        fruit_baskets.delete(left_fruit)
      end
      start_index += 1
    end
    max_length = [max_length, end_index - start_index + 1].max
  end
  return max_length
end

puts "Maximum number of fruits: " + fruits_into_baskets(['A', 'B', 'C', 'A', 'C']).to_s
puts "Maximum number of fruits: " + fruits_into_baskets(['A', 'B', 'C', 'B', 'B', 'C']).to_s

