# Given two lists of intervals, find the intersection of these two lists. Each list consists of disjoint intervals sorted on their start time.

def merge(intervals_a, intervals_b)
	merged = []

	i, j, start_point, end_point = 0,0,0,1

	while i < intervals_a.length and j < intervals_b.length

		# check if intervals overlap and intervals_a[i]'s start time lies within the other intervals_b[j]
		a_overlaps_b = intervals_a[i][start_point] >= intervals_b[j][start_point] and intervals_a[i][start_point] <= intervals_b[j][end_point]

		# check if intervals overlap and intervals_b[j]'s start time lies within the other intervals_a[i]
		b_overlaps_a = intervals_b[j][start_point] >= intervals_a[a][start_point] and intervals_b[j][start_point] <= intervals_a[i][end_point]

		# store the the intersection part

		if a_overlaps_b or b_overlaps_a
			merged.append([[intervals_a[i][start_point], intervals_b[j][start_point]].max, [intervals_a[i][end_point],intervals_b[j][end_point]].min])
		end

		# move next from the interval which is finishing first

		if intervals_a[i][end_point] < intervals_b[j][end_point]
			i += 1
		else
			j += 1
		end

	end

	return merged

end


puts "Intervals after inserting the new interval: #{merge([[1, 3], [5, 6], [7, 9]], [[2, 3], [5, 7]]).to_s}"
puts "Intervals after inserting the new interval: #{merge([[1, 3], [5, 7], [9, 12]], [[5, 10]]).to_s}"
