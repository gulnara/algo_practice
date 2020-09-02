

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


# O(V+E) time | 0(V) space
  def breadthFirstSearch(array)
    queue = [self]

    while queue.length > 0
      current = queue.shift
      array.append(current.name)
      for child in current.children
        queue.append(child)
      end
    end

    return array

  end
end


graph = Node.new("A")
graph.add_child("B").add_child("C").add_child("D")
graph.children[0].add_child("E").add_child("F")
graph.children[2].add_child("G").add_child("H")
graph.children[0].children[1].add_child("I").add_child("J")
graph.children[2].children[0].add_child("K")
expected = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
actual = graph.breadthFirstSearch([])

puts "Should output true: #{actual == expected}"

