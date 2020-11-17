# Given a list of intervals, merge all the overlapping intervals to produce a list that has only mutually exclusive intervals.

# O(N*logN) T | O(N) S
class Interval
  attr_accessor :start_point, :end_point

  def initialize(start_point, end_point)
    @start_point = start_point
    @end_point = end_point
  end

  def print_interval
    puts "[ #{self.start_point.to_s}, #{self.end_point.to_s} ]"
  end
end

def merge(intervals)
  if intervals.length < 2
    return intervals
  end

  intervals = intervals.sort_by { |el| el.start_point }
  merged_intervals = []
  start_point = intervals[0].start_point
  end_point = intervals[0].end_point

  for i in 1..(intervals.length - 1)
    interval = intervals[i]

    if interval.start_point <= end_point
      end_point = [interval.end_point, end_point].max
    else
      merged_intervals.append(Interval.new(start_point, end_point))
      start_point = interval.start_point
      end_point = interval.end_point
    end
  end

  merged_intervals.append(Interval.new(start_point, end_point))
  return merged_intervals
end

for i in merge([Interval.new(1, 4), Interval.new(2, 5), Interval.new(7, 9)])
  i.print_interval()
end