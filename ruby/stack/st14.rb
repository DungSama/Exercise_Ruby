=begin
Viết một lớp StockSpannerthu thập báo giá hàng ngày cho một số cổ phiếu và trả về khoảng giá  của cổ phiếu đó cho ngày hiện tại.
Khoảng giá của cổ phiếu ngày hôm nay được định nghĩa là số ngày liên tục tối đa 
(bắt đầu từ hôm nay và trở đi) mà giá của cổ phiếu đó nhỏ hơn hoặc bằng giá hôm nay.
Ví dụ, nếu giá của một cổ phiếu trong 7 ngày tới là giá của cổ phiếu 

[100, 80, 60, 70, 60, 75, 85]đó [1, 1, 1, 2, 1, 4, 6].
Input: ["StockSpanner","next","next","next","next","next","next","next"], [[],[100],[80],[60],[70],[60],[75],[85]]
Output: [null,1,1,1,2,1,4,6]
Explanation: 
First, S = StockSpanner() is initialized.  Then:
S.next(100) is called and returns 1,
S.next(80) is called and returns 1,
S.next(60) is called and returns 1,
S.next(70) is called and returns 2,
S.next(60) is called and returns 1,
S.next(75) is called and returns 4,
S.next(85) is called and returns 6.

Note that (for example) S.next(75) returned 4, because the last 4 prices
(including today's price of 75) were less than or equal to today's price.
=end
class StockSpanner
    attr_accessor :stocks, :stack
    def initialize()
       @stocks = [] 
       @stack = [] 
    end


=begin
    :type price: Integer
    :rtype: Integer
=end
    def next(price)
        stocks.push(price) 
       (stocks.size - 1).downto(0) do |i|
          while !stack.empty? && stocks[stack[-1]] <= price
              stack.pop
          end
          span = stack.empty? ? (i+1) : i - stack[-1]
          stack.push(i)
          return span 
       end
    end
end

