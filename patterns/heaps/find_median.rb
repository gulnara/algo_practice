# Design a class to calculate the median of a number stream. The class should have the following two methods:

# insertNum(int num): stores the number in the class
# findMedian(): returns the median of all numbers inserted in the class
# If the count of numbers inserted in the class is even, the median will be the average of the middle two numbers.



class MedianOfStream

	max_heap = []
	min_heap = []

	def insert_num(self, num)
		if min_heap.empty? or min_heap[-1] >= num
			min_heap.append(num)
		else
			min_heap.append(num)
		end

	end

	def find_median(self)

	end


end

medianOfAStream = MedianOfStream.new()
medianOfAStream.insert_num(3)
medianOfAStream.insert_num(1)
# puts "The median is: " + medianOfAStream.find_median.to_s
# medianOfAStream.insert_num(5)
# puts "The median is: " + medianOfAStream.find_median.to_s
# medianOfAStream.insert_num(4)
# puts "The median is: " + medianOfAStream.find_median.to_s


