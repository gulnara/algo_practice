class Node
  attr_accessor :name, :children

  def initialize(name)
    @children = []
    @name = name
  end

  def add_child(name)
    self.children.append(Node.new(name))
    return self
  end

  # O(v + e) T | O(v) S
  def depth_first_search(array)
    array.append(self.name)
    self.children.each do |child|
      child.depth_first_search(array)
    end
    return array

  end

end


# {
#   "nodes": [
#     {"children": ["B", "C", "D"], "id": "A", "value": "A"},
#     {"children": ["E", "F"], "id": "B", "value": "B"},
#     {"children": [], "id": "C", "value": "C"},
#     {"children": ["G", "H"], "id": "D", "value": "D"},
#     {"children": [], "id": "E", "value": "E"},
#     {"children": ["I", "J"], "id": "F", "value": "F"},
#     {"children": ["K"], "id": "G", "value": "G"},
#     {"children": [], "id": "H", "value": "H"},
#     {"children": [], "id": "I", "value": "I"},
#     {"children": [], "id": "J", "value": "J"},
#     {"children": [], "id": "K", "value": "K"}
#   ],
#   "startNode": "A"
# }
graph = Node.new("A")
graph.add_child("B").add_child("C").add_child("D")
graph.children[0].add_child("E").add_child("F")
graph.children[2].add_child("G").add_child("H")
graph.children[0].children[1].add_child("I").add_child("J")
graph.children[2].children[0].add_child("K")
expected = ["A", "B", "E", "F", "I", "J", "C", "D", "G", "K", "H"]
actual = graph.depth_first_search([])

puts "Should output true: #{actual == expected}"

