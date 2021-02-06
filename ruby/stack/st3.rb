=begin
	
Triển khai hàng đợi xuất trước (FIFO) chỉ sử dụng hai ngăn xếp. 
Các thực hiện hàng đợi nên hỗ trợ tất cả các chức năng của một hàng đợi bình thường ( push, peek, pop, và empty).

Thực hiện MyQueuelớp học:

void push(int x) Đẩy phần tử x ra sau hàng đợi.
int pop() Loại bỏ phần tử từ phía trước của hàng đợi và trả về nó.
int peek() Trả về phần tử ở phía trước hàng đợi.
boolean empty()Trả về truenếu hàng đợi trống, falsengược lại.

Đầu vào
["MyQueue", "push", "push", "peek", "pop", "blank"]
[[], [1], [2], [], [], []]
Đầu ra
[null, null, null, 1, 1, false]

=end
class MyQueue
    def initialize()
        @stack = []
    end

    def push(x)
        @stack << x
    end

    def pop()
        @stack.shift
    end

    def peek()
        @stack[0]
    end

    def empty()
        @stack.empty?
    end
end