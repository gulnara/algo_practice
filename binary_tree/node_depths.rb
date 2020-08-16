class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

# iterative
# O(n) T | O(h) S
def node_depths(root)
  sum_of_depths = 0
  stack = [{"node"=> root, "depth"=> 0}]

  while stack.length > 0
    node_info = stack.pop()
    node, depth = node_info["node"], node_info["depth"]
    if node.nil?
      next
    end
    sum_of_depths += depth
    stack.append({"node"=> node.left, "depth"=> depth + 1})
    stack.append({"node"=> node.right, "depth"=> depth + 1})
  end
  return sum_of_depths

end

# recursive
# O(n) T | O(h) S
# f(n,d) = d + f(l, d+1) + f(r, d+1)

def node_depths(root, depth = 0)
  if root.nil?
    return 0
  end

  return depth + node_depths(root.left, depth + 1) + node_depths(root.right, depth + 1)
end


# {
#   "tree": {
#     "nodes": [
#       {"id": "1", "left": "2", "right": "3", "value": 1},
#       {"id": "2", "left": "4", "right": "5", "value": 2},
#       {"id": "3", "left": "6", "right": "7", "value": 3},
#       {"id": "4", "left": "8", "right": "9", "value": 4},
#       {"id": "5", "left": "10", "right": null, "value": 5},
#       {"id": "6", "left": null, "right": null, "value": 6},
#       {"id": "7", "left": null, "right": null, "value": 7},
#       {"id": "8", "left": null, "right": null, "value": 8},
#       {"id": "9", "left": null, "right": null, "value": 9},
#     ],
#     "root": "1"
#   }
# }

root = BinaryTree.new(1)
root.left = BinaryTree.new(2)
root.left.left = BinaryTree.new(4)
root.left.left.left = BinaryTree.new(8)
root.left.right = BinaryTree.new(5)
root.left.left.right = BinaryTree.new(9)


root.right = BinaryTree.new(3)
root.right.left = BinaryTree.new(6)
root.right.right = BinaryTree.new(7)

expected = 16
actual = node_depths(root)
puts actual

puts "Should output true: #{actual == expected}"