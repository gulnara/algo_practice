# Write a method for finding the index of the "rotation point," which is where I started working from the beginning of the dictionary. This array is huge (there are lots of words I don't know) so we want to be efficient here.

words = [
  'ptolemaic',
  'retrograde',
  'supplant',
  'undulate',
  'xenoepist',
  'asymptote',  # <-- rotates here!
  'babka',
  'banoffee',
  'engender',
  'karpatka',
  'othellolagkage',
]

# O(logn) T | O(1) S
def find_rotation_point(words)

	first_word = words.first

	floor_index = 0
	ceiling_index = words.length - 1

	while floor_index < ceiling_index

		random_guess = (floor_index + ceiling_index) / 2

		if words[random_guess] >= first_word
			floor_index = random_guess
		else
			ceiling_index = random_guess
		end
		return ceiling_index if floor_index + 1 == ceiling_index
	end	
end

puts find_rotation_point(words)

