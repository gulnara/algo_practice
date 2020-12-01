# Given a list of non-overlapping intervals sorted by their start time, insert a given interval at the correct position and merge all necessary intervals to produce a list that has only mutually exclusive intervals.

def insert(intervals, new_interval)
	merged = []
	i, start_point, end_point = 0, 0, 1

end

puts "Intervals after inserting the new interval: #{insert([[1, 3], [5, 7], [8, 12]], [4, 6]).to_s}"
puts "Intervals after inserting the new interval: #{insert([[1, 3], [5, 7], [8, 12]], [4, 10]).to_s}"
puts "Intervals after inserting the new interval: #{insert([[2, 3], [5, 7]], [1, 4]).to_s}"