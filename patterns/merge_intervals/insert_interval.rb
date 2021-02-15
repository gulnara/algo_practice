# Given a list of non-overlapping intervals sorted by their start time, insert a given interval at the correct position and merge all necessary intervals to produce a list that has only mutually exclusive intervals.
# O(N) S T

def insert(intervals, new_interval)
	merged = []
	i, start_point, end_point = 0, 0, 1

	# skip (and add to output) all intervals that come before the 'new_interval'
	while i < intervals.length and intervals[i][end_point] < new_interval[start_point]
		merged.append(intervals[i])
		i += 1
	end

	# merge all intervals that overlap with 'new_interval'
	while i < intervals.length and intervals[i][start_point] <= new_interval[end_point]
		new_interval[start_point] = [intervals[i][start_point], new_interval[start_point]].min
		new_interval[end_point] = [intervals[i][end_point], new_interval[end_point]].max
		i += 1
	end

	merged.append(new_interval)

	while i < intervals.length
		merged.append(intervals[i])
		i += 1
	end

	return merged

end

puts "Intervals after inserting the new interval: #{insert([[1, 3], [5, 7], [8, 12]], [4, 6]).to_s}"
puts "Intervals after inserting the new interval: #{insert([[1, 3], [5, 7], [8, 12]], [4, 10]).to_s}"
puts "Intervals after inserting the new interval: #{insert([[2, 3], [5, 7]], [1, 4]).to_s}"