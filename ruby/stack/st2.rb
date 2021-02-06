=begin 
Đánh giá giá trị của một biểu thức số học trong Ký hiệu Ba Lan ngược .

Khai thác hợp lệ là +, -, *, /. Mỗi toán hạng có thể là một số nguyên hoặc một biểu thức khác.

Ghi chú:

Phép chia giữa hai số nguyên phải cắt ngắn về không.
Biểu thức RPN đã cho luôn hợp lệ. Điều đó có nghĩa là biểu thức sẽ luôn đánh giá thành một kết quả và sẽ không có bất kỳ phép toán chia cho 0 nào.

Đầu vào: ["2", "1", "+", "3", "*"]
Đầu ra: 9
Giải thích: ((2 + 1) * 3) = 9
=end

def eval_rpn(tokens)
    if tokens.length == 1
        return tokens[0].to_i
    elsif tokens.length == 0
        return 0 
    end
    
    stack = []
    i = 0
    operators = Set.new(["+", "-", "/", "*"])
    while i < tokens.length
        if operators.include?(tokens[i])
            tmp2 = stack.pop.to_i
            tmp1 = stack.pop.to_i
            case tokens[i]
                when "+"
                    partial = tmp1 + tmp2
                when "-"
                    partial = tmp1 - tmp2
                when "*"
                    partial = tmp1 * tmp2
                when "/"
                # truncation towards 0 issue 
                    if tmp1 < 0 && tmp2 > 0
                        partial = (tmp1.to_f / tmp2).ceil
                    elsif tmp1 > 0 && tmp2 < 0
                        partial = (tmp1.to_f / tmp2).ceil
                    else
                        partial = tmp1 / tmp2
                    end
            end
            stack << partial
        else
            stack << tokens[i]
        end
        i += 1
    end
    stack[-1]
end