=begin
	
Thiết kế một ngăn xếp hỗ trợ đẩy, bật lên, trên cùng và truy xuất phần tử tối thiểu trong thời gian không đổi.

push (x) - Đẩy phần tử x lên ngăn xếp.
pop () - Loại bỏ phần tử trên cùng của ngăn xếp.
top () - Nhận phần tử trên cùng.
getMin () - Lấy phần tử tối thiểu trong ngăn xếp.

Input
["MinStack","push","push","push","getMin","pop","top","getMin"]
[[],[-2],[0],[-3],[],[],[],[]]

Output
[null,null,null,null,-3,null,0,-2]

	
=end

class MinStack
    def initialize
        @mins, @stack = [], []
    end

    def push(x)
        @stack.push x
        @mins.push x if @mins.empty? or x <= @mins.last
    end

    def pop
        @mins.pop if @stack.pop == @mins.last
    end

    def top
        @stack.last
    end

    def get_min
        @mins.last
    end
end