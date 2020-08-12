
class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

# we don't need this method for solution
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

def get_tree_height(tree, height=0)
  if tree.nil?
    return height
  end

  leftree_height = get_tree_height(tree.left, height + 1)
  rightree_height = get_tree_height(tree.right, height + 1)
  return [leftree_height, rightree_height].max
end

# O(nlog(n)) time | O(n) space
def min_height_bst(array)
  return construct_min_height_bst(array, nil, 0, array.length - 1)
end

def construct_min_height_bst(array, bst, start_idx, end_idx)
  if end_idx < start_idx
    return
  end

  mid_idx = (start_idx + end_idx) / 2
  value_to_add = array[mid_idx]

  if bst.nil?
    bst = BST.new(value_to_add)
  else
    bst.insert(value_to_add)
  end

  construct_min_height_bst(array, bst, start_idx, mid_idx - 1)
  construct_min_height_bst(array, bst, mid_idx + 1, end_idx)
  return bst

end

# # O(n) time | O(n) space
# def min_height_bst(array)

# end


# # O(n) time | O(n) space
# def min_height_bst(array)

# end

array = [1, 2, 5, 7, 10, 13, 14, 15, 22]
tree = min_height_bst(array)

puts  "Should output true: #{get_tree_height(tree) == 4}"


