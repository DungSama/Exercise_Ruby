=begin
	
Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals,
 and return an array of the non-overlapping intervals that cover all the intervals in the input.

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Otput: [[1,6],[8,10],[15,18]]
=end

def merge(intervals)
    intervals.sort!{|a, b| a[0] <=> b[0]}
    1.upto(intervals.length - 1) do |i|
        if intervals[i-1][1] >= intervals[i][0]
            intervals[i][0] = intervals[i-1][0]
            intervals[i][1] = intervals[i-1][1] if intervals[i-1][1] > intervals[i][1]
            intervals[i-1] = nil
        end
    end
    intervals.compact
end
p merge([[1,3],[2,6],[8,10],[15,18]])