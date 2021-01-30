#Viết một chương trình tính giai thừa của một số nguyên dương n. 
#Với n được nhập từ bàn phím. Ví dụ, n = 8 thì kết quả đầu ra phải là 1*2*3*4*5*6*7*8 = 40320.
puts 'nhap so nguyen duong bat ky'
num = gets.to_i
factorial = 1
i=1
	while(i<=num)
		factorial=factorial*i
		i+=1
	end
		puts "giai thua cua #{num} la #{factorial}"


#c2: dùng đệ quy
def tinhgiaithua(num)
  if num >0 
    return num *tinhgiaithua(num-1)
  else
    return 1
  end
end
puts tinhgiaithua(5)