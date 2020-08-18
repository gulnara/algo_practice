class SuffixTrie
  attr_accessor :root, :end_symbol

  def initialize(string)
    @root = {}
    @end_symbol = "*"
    self.populate_suffix_trie_from(string)
  end

# O(n^2) time | O(n^2) space
  def populate_suffix_trie_from(string)
    for i in 0..(string.length - 1)
      self.insert_substring_starting_at(i, string)
    end
  end

  def insert_substring_starting_at(i, string)
    node = self.root
    for j in i..(string.length - 1)
      letter = string[j]
      if !node.has_key?(letter)
        node[letter] = {}
      end
      node = node[letter]
    end
    node[self.end_symbol] = true

  end

# O(m) time | O(1) space
  def contains(string)
    node = self.root
    string.each_char { |letter|
      if !node.has_key?(letter)
        return false
      end
      node = node[letter]
    }

    return node.has_key?(end_symbol)
  
  end
end

trie = SuffixTrie.new("babc")
expected = {
    "b": {"a": {"b": {"c": {"*": true}}}, "c": {"*": true}},
    "a": {"b": {"c": {"*": true}}},
    "c": {"*": true}
}
puts trie.root
puts "Should output true: #{trie.root == expected}"
puts "Should output true: #{trie.contains("abc")}"
