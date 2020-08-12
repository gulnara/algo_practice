class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

# Average: O(log(n)) t | O(1) s
# Worst: O(n) t | O(1) s
  def insert(value)
    current_node = self
    while true
      if value < current_node.value
        if current_node.left.nil?
          current_node.left = BST.new(value)
          break
        else
          current_node = current_node.left
        end
      else
        if current_node.right.nil?
          current_node.right = BST.new(value)
          break
        else
          current_node = current_node.right
        end
      end
    end
    return self
  end


  def contains(value)
    current_node = self

    while !current_node.nil?
      if value < current_node.value
        current_node = current_node.left
      elsif value > current_node.value
        current_node = current_node.right
      else
        return true
      end
    end

    return false

  end

  def remove(value)

  end

end



root = BST.new(10)
root.left = BST.new(5)
root.left.left = BST.new(2)
root.left.left.left = BST.new(1)
root.left.right = BST.new(5)
root.right = BST.new(15)
root.right.left = BST.new(13)
root.right.left.right = BST.new(14)
root.right.right = BST.new(22)


# root.insert(12)
# puts "Should output true: #{root.right.left.left.value == 12}"

# root.remove(10)
# puts "Should output false: #{root.contains(10)}"

puts "Should output true: #{root.contains(15)}"

