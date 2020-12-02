# Given two lists of intervals, find the intersection of these two lists. Each list consists of disjoint intervals sorted on their start time.

def merge(intervals_a, intervals_b)
	merged = []

	i, j, start_point, end_point = 0,0,0,1

	while i < intervals_a.length and j < intervals_b.length

		# check if intervals overlap and intervals_a[i]'s start time lies within the other intervals_b[j]

		# check if intervals overlap and intervals_a[j]'s start time lies within the other intervals_b[i]

		# store the the intersection part

		# move next from the interval which is finishing first

	end

end


puts "Intervals after inserting the new interval: #{merge([[1, 3], [5, 6], [7, 9]], [[2, 3], [5, 7]]).to_s}"
puts "Intervals after inserting the new interval: #{merge([[1, 3], [5, 7], [9, 12]], [[5, 10]]).to_s}"
