=begin
	
Cho một chuỗi schỉ chứa các ký tự '(', ')', '{', '}', '['và ']', xác định xem chuỗi đầu vào là hợp lệ.

Chuỗi đầu vào hợp lệ nếu:

Các dấu ngoặc mở phải được đóng bằng cùng một loại dấu ngoặc.
Các dấu ngoặc mở phải được đóng theo đúng thứ tự.


Đầu vào: s = "()"
Đầu ra: true	
=end
def is_valid(s)
    return true if s.empty?
    
    stack = []
    s.each_char do |c|
        case c
        when '(', '{', '['
            stack.push(c)
        when ')'
            return false if stack.pop() != '('
        when '}'
            return false if stack.pop() != '{'
        when ']'
            return false if stack.pop() != '['
        end
    end
    return stack.empty?
end