=begin
	
Giả sử bạn có một mảng pricesmà phần tử thứ i là giá của một cổ phiếu nhất định vào ngày thứ i .

Thiết kế một thuật toán để tìm lợi nhuận tối đa. Bạn có thể hoàn thành bao nhiêu giao dịch tùy thích 
(tức là mua một và bán một cổ phiếu nhiều lần).
Lưu ý: Bạn không được tham gia nhiều giao dịch cùng lúc (tức là bạn phải bán cổ phiếu trước khi mua lại).

Đầu vào: [7,1,5,3,6,4]
 Đầu ra: 7
 Giải thích: Mua vào ngày 2 (giá = 1) và bán vào ngày 3 (giá = 5), lợi nhuận = 5-1 = 4. 
             Sau đó mua vào ngày 4 (giá = 3) và bán vào ngày 5 (giá = 6), lợi nhuận = 6-3 = 3.

Đầu vào: [1,2,3,4,5]
 Đầu ra: 4
 Giải thích: Mua vào ngày 1 (giá = 1) và bán vào ngày 5 (giá = 5), lợi nhuận = 5-1 = 4. 
             Lưu ý rằng bạn không thể mua vào ngày 1, mua vào ngày 2 và bán sau đó, vì bạn đang thực hiện 
             nhiều giao dịch cùng một lúc. Bạn phải bán trước khi mua lại.

Đầu vào: [7,6,4,3,1]
 Đầu ra: 0
 Giải thích: Trong trường hợp này, không có giao dịch nào được thực hiện, tức là lợi nhuận tối đa = 0.	
=end
def max_profit(prices)
  sum = 0
  prices.each_with_index do |p,index|
    if prices[index+1] && prices[index+1] > p
      sum += prices[index+1] - p
    end
  end
  sum
end

#c2: def max_profit(prices)
  #  prices.size > 1 ? prices.each_cons(2).map { |(a,b)| [b - a, 0].max }.reduce(:+) : 0
 # end