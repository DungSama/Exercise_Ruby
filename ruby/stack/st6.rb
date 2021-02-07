=begin
	
Cho một số nguyên không âm num được biểu diễn dưới dạng một chuỗi, hãy xóa k chữ số khỏi số đó để số mới là số nhỏ nhất có thể.

Ghi chú:
Độ dài của num nhỏ hơn 10002 và sẽ là ≥ k .
Các trao num không chứa bất kỳ zero hàng đầu.

Đầu vào: num = "1432219", k = 3
Đầu ra: "1219"
Giải: Bỏ ba chữ số 4, 3, 2 để tạo thành số mới 1219 là số nhỏ nhất.	
=end
def remove_kdigits(num, k)
    res = []
    num.chars.each do |d|
        while k!= 0 && !res.empty? && res[-1] > d
            res.pop
            k -= 1
        end
        res << d
    end
    
    while !res.empty? && k > 0
        res.pop
        k -= 1
    end
    return '0' if res.empty?
    return res.join().to_i.to_s
end