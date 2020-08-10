
# # O(n) TS
# def caesarCipherEncryptor(string, key)
#   new_letters = []
#   new_key = key % 26

#   string.each_char do |letter|
#     new_letters.append(get_new_letter(letter, new_key))
#   end
#   return new_letters.join
# end

# def get_new_letter(letter, key)
#   new_letter_code = letter.ord + key
#   if new_letter_code <= 122
#     new_letter_code.chr
#   else
#     (96 + new_letter_code % 122).chr
#   end
# end


# O(n) TS
def caesarCipherEncryptor(string, key)
  new_letters = []
  new_key = key % 26
  alphabet = ("abcdefghijklmnopqrstuvwxyz").chars

  string.each_char do |letter|
    new_letters.append(get_new_letter(letter, new_key, alphabet))
  end
  return new_letters.join
end

def get_new_letter(letter, key, alphabet)
  new_letter_code = alphabet.find_index(letter) + key
  return alphabet[new_letter_code % 26]
  
end

string = "xyz"
key = 2
expected = "zab"
actual = caesarCipherEncryptor(string, key)

puts "Should output true: #{actual == expected}"