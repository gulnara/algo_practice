class BST
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

def find_closest_value_in_bst(tree, target)
  return find_closest_value_in_bst_helper(tree, target, tree.value)

end

# recursive approach
# avg O(lg(n)) TS
# worst O(n) TS
# def find_closest_value_in_bst_helper(tree, target, closest)
#   if tree.nil?
#     return closest
#   end
#   if (target - closest).abs  > (target - tree.value).abs
#     closest = tree.value
#   end
#   if target < tree.value
#     return find_closest_value_in_bst_helper(tree.left, target, closest)
#   elsif target > tree.value
#     return find_closest_value_in_bst_helper(tree.right, target, closest)
#   else
#     return closest
#   end

# end


# itterative approach
# avg O(lg(n)) T | O(1) S
# worst O(n) T | O(1) S
def find_closest_value_in_bst_helper(tree, target, closest)
  current_node = tree

  while !current_node.nil?
    if (target - closest).abs  > (target - current_node.value).abs
      closest = current_node.value
    end

    if target < current_node.value
      current_node = current_node.left
    elsif target > current_node.value
      current_node = current_node.right
    else
      break
    end
  end
  return closest
end


# input = {
#   "tree": {
#     "nodes": [
#       {"id": "10", "left": "5", "right": "15", "value": 10},
#       {"id": "15", "left": "13", "right": "22", "value": 15},
#       {"id": "22", "left": nil, "right": nil, "value": 22},
#       {"id": "13", "left": nil, "right": "14", "value": 13},
#       {"id": "14", "left": nil, "right": nil, "value": 14},
#       {"id": "5", "left": "2", "right": "5-2", "value": 5},
#       {"id": "5-2", "left": nil, "right": nil, "value": 5},
#       {"id": "2", "left": "1", "right": nil, "value": 2},
#       {"id": "1", "left": nil, "right": nil, "value": 1}
#     ],
#     "root": "10"
#   },
#   "target": 12
# }


root = BST.new(10)
root.left = BST.new(5)
root.left.left = BST.new(2)
root.left.left.left = BST.new(1)
root.left.right = BST.new(5)
root.right = BST.new(15)
root.right.left = BST.new(13)
root.right.left.right = BST.new(14)
root.right.right = BST.new(22)
expected = 13
actual = find_closest_value_in_bst(root, 12)

puts "Should output true: #{actual == expected}"



