# Given an array of intervals representing ‘N’ appointments, find out if a person can attend all the appointments.

def can_attend_all_appointments(intervals)
	intervals = intervals.sort_by {|el| el[0] }
	start_point, end_point = 0, 1

	for i in 1..(intervals.length - 1)
		if intervals[i][start_point] < intervals[i - 1][end_point]
			return false
		end
	end
	return true

end

puts "Can attend all appointments: " + can_attend_all_appointments([[1, 4], [2, 5], [7, 9]]).to_s
puts "Can attend all appointments: " + can_attend_all_appointments([[6, 7], [2, 4], [8, 12]]).to_s
puts "Can attend all appointments: " + can_attend_all_appointments([[4, 5], [2, 3], [3, 6]]).to_s
