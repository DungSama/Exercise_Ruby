#Viết chương trình tính tổng của các chữ số của môt số nguyên n trong 
#Số nguyên dương n được nhập từ bàn phím. Với n = 1234, tổng các chữ số: 1 + 2 + 3 + 4 = 10
def tongcs(num)
  sum = 0
  while (num != 0)
    sum = sum + num % 10
    num /=10
  end
  sum
end
p tongcs(123)
#c2:
def sum_digits(num, base = 10)
  num.digits(base).sum
end
p sum_digits(12)
#c3:
