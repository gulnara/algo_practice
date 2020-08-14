
def group_anagrams(words)
  anagrams = {}

  words.each do |word|
    sorted_word = word.chars.sort.join

    if anagrams.key?(sorted_word)
      anagrams[sorted_word].append(word)
    else
      anagrams[sorted_word] = [word]
    end
  end

  return anagrams.values

end


words = ["yo", "act", "flop", "tac", "foo", "cat", "oy", "olfp"]
puts group_anagrams(words)