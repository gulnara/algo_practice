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