class MinStack
    attr_accessor :stack, :min_stack
=begin
    initialize your data structure here.
=end
    def initialize()
        @min_stack = []
        @stack = []
        
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        new_min = x
        if self.min_stack.length > 0 
            last_min= self.min_stack[-1]
            new_min = [x, last_min].min
        end
        self.min_stack.append(new_min)
        return self.stack.append(x)
    end


=begin
    :rtype: Void
=end
    def pop()
        self.min_stack.pop
        return self.stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
        return self.stack[self.stack.length - 1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        return self.min_stack[-1]
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()