=begin
	
Cho một chuỗi sđại diện cho một biểu thức, hãy đánh giá biểu thức này và trả về giá trị của nó . 

Phép chia số nguyên phải cắt ngắn về phía không.

Đầu vào: s = "3 + 2 * 2"
Đầu ra: 7	
=end
def calculate(s)
  operators = Set.new(%w[+ - * /])
  digits = Set.new('0'..'9')
  
  num = 0
  presign = '+'
  stack = []
  
  (s.delete(' ') + '+').each_char do |char|
    if digits.include?(char)
      num = num*10 + char.to_i
    elsif operators.include?(char)
      stack << case presign 
        when '+' ; num
        when '-' ; -num
        when '*' ; stack.pop*num
        when '/' ; (stack.pop.to_f/num).to_i
      end
      
      presign = char
      num = 0
    end
  end
  
  stack.sum
end