class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

end

# recursive DFS
# average O(n) ST

def branchSums(root)
  sums = []
  calculate_branch_sums(root, "", sums)

  return sums.sum
end

def calculate_branch_sums(node, running_sum, sums)

  if node.nil?
    return
  end

  new_running_sum = running_sum + node.value.to_s

  if node.left.nil? && node.right.nil?
    sums.append(new_running_sum.to_i)
    return sums
  end

  calculate_branch_sums(node.left, new_running_sum, sums)
  calculate_branch_sums(node.right, new_running_sum, sums)

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
#       {"id": "10", "left": null, "right": null, "value": 10}
#     ],
#     "root": "1"
#   }
# }

root = BinaryTree.new(1)
root.left = BinaryTree.new(2)
root.left.left = BinaryTree.new(4)
root.left.right = BinaryTree.new(5)

root.right = BinaryTree.new(3)


expected = [15, 16, 18, 10, 11]
actual = branchSums(root)
puts actual

puts "Should output true: #{actual == expected}"




