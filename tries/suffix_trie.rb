class SuffixTrie
  attr_accessor :root, :end_symbol

  def initialize(string)
    @root = {}
    @end_symbol = "*"
    self.populate_suffix_trie_from(string)
  end

  def populate_suffix_trie_from(string)
  
  end

  def contains(string)
  
  end
end

trie = SuffixTrie.new("babc")
expected = {
    "c": {"*": true},
    "b": {"c": {"*": true}, "a": {"b": {"c": {"*": true}}}},
    "a": {"b": {"c": {"*": true}}},
}

puts "Should output true: #{trie.root == expected}"
puts "Should output true: #{trie.contains("abc")}"
