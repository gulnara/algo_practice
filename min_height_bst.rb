class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert(value)
    if value < self.value
      if self.left.nil?
        self.left = BST.new(value)
      else
        self.left.insert(value)
      end
    else
      if self.right.nil?
        self.right = BST.new(value)
      else
        self.right.insert(value)
      end
    end
  end
end


def min_height_bst(array)

end


array = [1, 2, 5, 7, 10, 13, 14, 15, 22]
tree = min_height_bst(array)

puts tree