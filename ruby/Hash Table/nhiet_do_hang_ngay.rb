#Đưa ra danh sách nhiệt độ hàng ngày T, hãy trả về danh sách sao cho mỗi ngày trong đầu vào, 
#cho bạn biết bạn sẽ phải đợi bao nhiêu ngày cho đến khi nhiệt độ ấm hơn. 
#Nếu không có ngày nào trong tương lai mà điều này có thể xảy ra, hãy đặt 0thay vào đó.
#Ví dụ, với danh sách nhiệt độ T = [73, 74, 75, 71, 69, 72, 76, 73], đầu ra của bạn sẽ là [1, 1, 4, 2, 1, 1, 0, 0].
#Lưu ý: Độ dài của temperaturessẽ nằm trong phạm vi [1, 30000]. Mỗi nhiệt độ sẽ là một số nguyên trong phạm vi [30, 100].

def daily_temperatures(t)
  stack = []
  res = Array.new(t.size, 0)
  (0...t.size).reverse_each do |i|
    temp = t[i]
    if stack.size == 0
      res[i] = 0
    elsif temp < stack.last[0]
      res[i] = 1
    else
      while stack.size > 0 && temp >= stack.last[0]
        stack.pop
      end

      if stack.size == 0
        res[i] = 0
      else
        res[i] = stack.last[1] - i
      end
    end
    
    stack.push([temp, i])
  end
  res
end