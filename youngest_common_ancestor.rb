class AncestralTree
  attr_accessor :name, :ancestor

  def initialize(name)
    @name = name
    @ancestor = nil
  end

  def add_desc(*descendants)
    for descendant in descendants
      descendant.ancestor = self
    end
  end

end


# O(D) time | O(1) space
def getYoungestCommonAncestor(top_ancestor, descendant_one, descendant_two)

  depth_one = get_descendant_depth(descendant_one, top_ancestor)
  depth_two = get_descendant_depth(descendant_two, top_ancestor)

  if depth_one > depth_two
    return backtrack_ancestral_tree(descendant_one, descendant_two, (depth_one - depth_two))
  else
    return backtrack_ancestral_tree(descendant_two, descendant_one, (depth_two - depth_one))
  end

end

def get_descendant_depth(descendant, top_ancestor)
  depth = 0

  while descendant != top_ancestor
    depth += 1
    descendant = descendant.ancestor
  end

  return depth
end

def backtrack_ancestral_tree(lower_desc, higher_desc, diff)

  while diff > 0
    lower_desc = lower_desc.ancestor
    diff -= 1
  end

  while lower_desc != higher_desc
    lower_desc = lower_desc.ancestor
    higher_desc = higher_desc.ancestor
  end

  return lower_desc

end


def new_trees
  a_trees = {}

  for letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars
    a_trees[letter] = AncestralTree.new(letter)
  end
  return a_trees
end


trees = new_trees()
trees["A"].add_desc(trees["B"], trees["C"])
trees["B"].add_desc(trees["D"], trees["E"])
trees["D"].add_desc(trees["H"], trees["I"])
trees["C"].add_desc(trees["F"], trees["G"])

yca = getYoungestCommonAncestor(trees["A"], trees["E"], trees["I"])

puts "Should output true: #{yca == trees["B"]}"


