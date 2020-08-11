class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert(value)

  end


  def contains(value)

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


root.insert(12)
puts "Should output true: #{root.right.left.left.value == 12}"

root.remove(10)
puts "Should output false: #{root.contains(10)}"

puts "Should output true: #{root.contains(15)}"

