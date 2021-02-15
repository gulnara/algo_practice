# O(nd) T | O (n) S

def min_number_of_coins_for_change(n, denoms)

  num_of_coins= Array.new(n+1, 1.0 / 0)
  num_of_coins[0] = 0

  for denom in denoms
    for amount in 0..(num_of_coins.length-1)
      if denom <= amount
        num_of_coins[amount] = [num_of_coins[amount], 1 + num_of_coins[amount - denom]].min
      end
    end
  end
  return num_of_coins[n]

end


n = 7
denoms = [1,5,10]
actual = min_number_of_coins_for_change(n, denoms)

puts "Should output true: #{ actual  == 3}"