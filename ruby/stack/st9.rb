=begin
Bạn đang giữ điểm cho một trận đấu bóng chày với những quy tắc kỳ lạ. Trò chơi bao gồm một số vòng, 
trong đó điểm số của các vòng trong quá khứ có thể ảnh hưởng đến điểm của các vòng trong tương lai.
Khi bắt đầu trò chơi, bạn bắt đầu với một bản ghi trống. Bạn được cung cấp một danh sách các chuỗi ops, 
đâu ops[i]là thao tác bạn phải áp dụng cho bản ghi và là một trong những thao tác sau:ith

Một số nguyên x- Ghi lại một điểm mới là x.
"+"- Ghi điểm mới là tổng của hai điểm trước đó. Nó được đảm bảo sẽ luôn có hai điểm số trước đó.
"D"- Ghi một số điểm mới gấp đôi số điểm trước đó. Nó được đảm bảo sẽ luôn có điểm trước đó.
"C"- Vô hiệu hóa số điểm trước đó, xóa nó khỏi hồ sơ. Nó được đảm bảo sẽ luôn có điểm trước đó.

Đầu vào: ops = ["5", "2", "C", "D", "+"]
Đầu ra: 30
=end
def cal_points(ops)
stack = []

ops.each do |o|
  if  o == "C"
    stack.pop
  elsif o == "D"
    stack << 2*stack.last
  elsif o == "+"
    stack << stack.last(2).sum
  else
    stack << o.to_i
  end
  
end
stack.sum
end