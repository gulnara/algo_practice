# Given a list of intervals, merge all the overlapping intervals to produce a list that has only mutually exclusive intervals.

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

end