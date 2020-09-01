class MinMaxStack

  attr_accessor :min_max_stack, :stack

  def initialize
    @min_max_stack = []
    @stack = []
  end

# O(1) t s
  def peek
    return self.stack[self.stack.lenght - 1]
  end

# O(1) t s
  def pop
    self.min_max_stack.pop
    return self.stack.pop
  end

# O(1) t s
  def push(number)
    new_min_max = {:min => number, :max => number}
    if self.min_max_stack.length > 0 
      last_min_max = self.min_max_stack[self.min_max_stack.length - 1]
      new_min_max[:min] = [last_min_max[:min], number].min
      new_min_max[:max] = [last_min_max[:max], number].max
    end
    self.min_max_stack.append(new_min_max)
    return self.stack.append(number)
  end

# O(1) t s
  def get_min
    return self.min_max_stack[self.min_max_stack.length - 1][:min]
  end


# O(1) t s
  def get_max
    return self.min_max_stack[self.min_max_stack.length - 1][:max]
  end

end


stack = MinMaxStack.new
stack.push(5)
min = stack.get_max
max = stack.get_min

puts "Should output true: #{min == 5}"
puts "Should output true: #{max == 5}"


