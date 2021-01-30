=begin Cho trước hai số nguyên không âm num1và được num2biểu diễn dưới dạng chuỗi, 
trả về tích của num1và num2, cũng được biểu diễn dưới dạng chuỗi.
Input: num1 = "2", num2 = "3"
Output: "6"
=end
def multiply(num1, num2)
    result = Array.new(num1.length + num2.length + 1, 0)
    num1 = num1.reverse
    num2 = num2.reverse
    for i in (0...num1.length)
        for j in (0...num2.length)
            result[i + j] += num1[i].to_i * num2[j].to_i
            result[i + j + 1] += result[i + j]/10
            result[i + j] %= 10
        end
    end
    result = result.reverse
    start = 0
    start += 1 while result[start] == 0 && start < result.length - 1
    result[start..-1].join()
end
p multiply("2","3")