#Dãy số Fibonacci được định nghĩa như sau: F0 = 0, F1 = 1, F2 = 1, Fn = F(n-1) + F(n-2) với n >= 2.
# Ví dụ: 0, 1, 1, 2, 3, 5, 8, ... Hãy viết chương trình tìm n số Fibonacci đầu tiên.
def fibonacci(n)
  if (n<=2)
    return 1
  else
   return fibonacci(n-1) + fibonacci(n-2)
  end
end
puts "Nhap n:"
n=gets.chomp.to_i

puts " #{n} so fibonacci dau tien:-"
for i in 1..n
	puts fibonacci(i)
end