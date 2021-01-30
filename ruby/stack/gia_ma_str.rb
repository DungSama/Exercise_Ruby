=begin
	
Cho một chuỗi được mã hóa, trả về chuỗi đã giải mã của nó.

Quy tắc mã hóa là k[encoded_string]:, trong đó phần encoded_stringbên trong dấu ngoặc vuông được lặp lại chính xác klần. Lưu ý rằng kđược đảm bảo là một số nguyên dương.

Bạn có thể cho rằng chuỗi đầu vào luôn hợp lệ; Không có khoảng trắng thừa, dấu ngoặc vuông được tạo hình tốt, v.v.

Hơn nữa, bạn có thể giả định rằng dữ liệu gốc không chứa bất kỳ chữ số nào và các chữ số đó chỉ dành cho những số lặp lại k,. Ví dụ: sẽ không có đầu vào như 3ahoặc 2[4].


Đầu vào: s = "3 [a] 2 [bc]"
Đầu ra: "aaabcbc"
	
=end
def decode_string(s)
    stack = []
    
    s.each_char do |char|
        if char == ']'
            temp_char_string = ''
            
            while((temp_char = stack.pop) != '[')
                temp_char_string << temp_char
            end
            
            number = ''
            
            while(stack[-1] && stack[-1].match(/\d/))
                number << stack.pop
            end
            
            number = number.reverse.to_i
            temp_char_string = temp_char_string.reverse * number
            temp_char_string.each_char {|ch| stack.push(ch)}            
        else
            stack.push(char)
        end
    end
    stack.join('')
end