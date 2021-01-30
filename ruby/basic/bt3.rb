=begin
Viết chương trình giải phương trình bậc 2: ax2 + bx + c = 0.
=end
puts "Nhap he  so A:"
a = gets()
a = a.to_i
puts "Nhap he  so B:"
b = gets()
b= b.to_i
puts "Nhap he so C:"
c = gets()
c = c.to_i
a2 = 2*a

if a != 0 then
  delta = (b*b) - (4*a*c)
  sqrt_delta = Math.sqrt(delta)
  if delta > 0 then
    x1 = (-b + sqrt_delta)/a2
    x2 = (-b - sqrt_delta)/a2
    puts "x1: #{x1} - x2: #{x2}"
  else
    if delta == 0 then
      x = -b/a2
      puts "PT nghiệm kép x1 = x2 = : #{x}"
    else
      puts "Vô nghiệm"
    end
  end
else
  puts "Ko phải ptb2"
end