=begin
Đưa ra một tập hợp các khoảng không chồng chéo , hãy chèn một khoảng mới vào các khoảng (hợp nhất nếu cần).

Bạn có thể cho rằng các khoảng thời gian ban đầu được sắp xếp theo thời gian bắt đầu của chúng.
Đầu vào: khoảng = [[1,3], [6,9]], newInterval = [2,5]

Đầu ra: [[1,5], [6,9]]
Đầu vào: khoảng = [[1,2], [3,5], [6,7], [8,10], [12,16]], newInterval = [4,8]

Đầu ra: [[1,2 ], [3,10], [12,16]]
Giải thích: Vì khoảng mới [4,8]trùng với [3,5],[6,7],[8,10].

Đầu vào: khoảng = [], newInterval = [5,7]
 Đầu ra: [[5,7]]

=end

def insert(intervals, new_interval)
  result = []
  
  (intervals + [new_interval]).sort.each do |interval|
    if result.empty? || result.last[1] < interval[0]
      result << interval
    else
      result[-1][1] = [result.last[1], interval[1]].max
    end
  end
  
  result
end