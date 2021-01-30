#Viết chương trình liệt kê tất cả các số nguyên tố nhỏ hơn n. 
#Số nguyên dương n được nhập từ bàn phím.
def is_prime(num)
  (2..(num-1)).each do |n|
    return false if num % n == 0
  end
  true
end
def primes(max)
  primes = []

  (2...max).each do |num|
    primes << num if is_prime(num)
  end

  primes
end
p primes(100)
#c2:
require 'prime'
# kiem tra snt 
Prime.instance.prime?(2)  #=> true
Prime.prime?(2)
# snt < 100
Prime.each(100) do |prime|
  p prime  
end
# 5 snt dau tiên :
Prime.first 5  # => [2, 3, 5, 7, 11]
# tách snt 
Prime.prime_division(45)  #=> [[3, 2], [5, 1]]
3**2 * 5                  #=> 45
 
#Viết chương trình liệt kê tất cả số nguyên tố có 5 chữ số 
def is_prime(num)
  (2..(num-1)).each do |n|
    return false if num % n == 0
  end
  true
end
def prime 
 primes = []
  (10000..99999).each do |num|
    primes << num if is_prime(num)
  end 
  primes 
end
p prime


 


