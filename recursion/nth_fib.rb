# F(n) = F(n-1) + F(n-2)

# recursive
# O(2^n) time | O(n) space

def get_nth_fib(n)
  if n == 0 || n == 1
    return 0
  elsif n == 2
    return 1
  else
    return get_nth_fib(n-1) + get_nth_fib(n-2)
  end

end


# O(n) time | O(n) space

def get_nth_fib(n, memoize={1=>0, 2=>1})
  if memoize.key?(n)
    return memoize[n]
  else
    memoize[n] = get_nth_fib(n-1, memoize) + get_nth_fib(n-2, memoize)
    return memoize[n]
  end

end


# O(n) time | O(1) space

def get_nth_fib(n)
  last_two = [0,1]
  counter = 3

  while counter <= n do
    next_fib = last_two[0] + last_two[1]
    last_two[0] = last_two[1]
    last_two[1] = next_fib
    counter += 1
  end

  if n > 1 
    return last_two[1]
  else
    return last_two[0]
  end 

end


n = 6
actual = get_nth_fib(n)
expected = 5

puts "Should output true: #{actual == expected}"