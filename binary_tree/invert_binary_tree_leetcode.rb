# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
    helper(root)
    return root
end

def helper(root)

  return unless !root.nil?

  helper(root.left)
  helper(root.right)
  root.left, root.right = root.right, root.left
end