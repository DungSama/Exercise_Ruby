=begin
	
Cho một chuỗi dấu ngoặc đơn cân bằng S, tính điểm của chuỗi dựa trên quy tắc sau:

() có điểm 1
ABcó điểm A + B, trong đó A và B là các chuỗi dấu ngoặc đơn cân bằng.
(A)có điểm 2 * A, trong đó A là một chuỗi dấu ngoặc đơn cân bằng.

Đầu vào: "()" 
Đầu ra: 1	
=end
def score_of_parentheses(s)
    return 0 if s.size < 2

    stack = []
    
    s.each_char do |ch|
        if ch == '('
            stack << ch
        else
            top = stack.pop
            
            if top == '('
                stack << 1
            else
               sum = top
               until stack.last == '('
                   sum += stack.pop
               end
                stack.pop
                stack << sum * 2
            end
        end
    end
    stack.reduce(:+)
end