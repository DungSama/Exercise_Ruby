=begin
Đối với một số nguyên không âm X, dạng  mảngX  là một mảng các chữ số của nó theo thứ tự từ trái sang phải.
Ví dụ, nếu X = 1231, thì dạng mảng là  [1,2,3,1].
Cho dạng mảng Acủa một số nguyên không âm X, hãy trả về dạng mảng của số nguyên X+K.

Input: A = [1,2,0,0], K = 34
Output: [1,2,3,4]
Explanation: 1200 + 34 = 1234
=end
def add_to_array_form(a, k)
    (a.join("").to_i + k).to_s.split("").map(&:to_i)
end