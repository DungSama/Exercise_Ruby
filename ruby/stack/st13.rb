=begin
	
Một chuỗi mã hóa Sđược đưa ra. Để tìm và ghi chuỗi đã giải mã vào băng,
chuỗi được mã hóa được đọc từng ký tự một  và thực hiện các bước sau:
Nếu ký tự được đọc là một chữ cái, thì chữ cái đó sẽ được ghi vào băng.
Nếu ký tự được đọc là một chữ số (giả sử d), toàn bộ đoạn băng hiện tại được ghi  d-1 nhiều lần hơn tổng cộng.
Bây giờ đối với một số chuỗi được mã hóa Svà một chỉ mục K, 
hãy tìm và trả về Kchữ cái -th (1 được lập chỉ mục) trong chuỗi được giải mã.

Đầu vào: S = "leet2code3" , K = 10 
Đầu ra: "o" 

Giải thích:
Chuỗi được giải mã là "leetleetcodeleetleetcodeleetleetcode".
Chữ cái thứ 10 trong chuỗi là "o".	
=end
def decode_at_index(s, k)
  length = 0
  s.chars.each do |char|
    length = char =~ /\d/ ? length*char.to_i : length + 1
    next if k <= length
  end
  
  s.reverse.each_char do |char|
    if char =~ /\d/
      length /= char.to_i
      k %= length
    else
      return char if k == length || k == 0
      length -= 1
    end
  end
end