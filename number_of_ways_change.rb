
# O(nd) time | O(n)spaces
def number_of_ways_hange(n, denoms)
  ways= Array.new(n+1, 0)
  ways[0] = 1

  for denom in denoms
    for amount in 1..n
      if denom <= amount
        ways[amount] += ways[amount - denom]
      end
    end
  end

  return ways[n]
end

n = 6
denoms = [1,5]
actual = number_of_ways_hange(n, denoms)

puts "Should output true: #{ actual  == 2}"