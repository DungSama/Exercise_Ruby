#Viết chương trình tìm ước số chung lớn nhất (USCLN) 
#và bội số chung nhỏ nhất (BSCNN) của hai số nguyên dương a và b nhập từ bàn phím.
def uscln(a, b)
  if a % b == 0
    b
  else
    uscln(b, a % b)
  end
end
p uscln(6, 8)

def bscnn(a,b)
  return a*b/uscln(a,b)
end
p bscnn(10,24)

#c2: 
puts 6.gcd(8)
puts 10.lcm(24)




