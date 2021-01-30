=begin 
Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

Note:

The length of both num1 and num2 is < 5100.
Both num1 and num2 contains only digits 0-9.
Both num1 and num2 does not contain any leading zero.
You must not use any built-in BigInteger library or convert the inputs to integer directly.
=end
def add_strings(num1, num2)
    numbers = {
        "1" => 1,
        "2" => 2,
        "3" => 3,
        "4" => 4,
        "5" => 5,
        "6" => 6,
        "7" => 7,
        "8" => 8,
        "9" => 9,
        "0" => 0,
    }
    
    number1 = 0
    num1[0...-1].chars.each do |n|
        number1 += numbers[n]
        number1 *= 10
    end
    number1 += numbers[num1.chars.last]
    
    number2 = 0
    num2[0...-1].chars.each do |n|
        number2 += numbers[n]
        number2 *= 10
    end
    number2 += numbers[num2.chars.last]
    (number1+number2).to_s
end