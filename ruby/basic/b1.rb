#Viết chương trình tìm tất cả các số chia hết cho 7 nhưng không phải bội số của 5, nằm trong đoạn 10 và 200 (tính cả 10 và 200).
(10..200).each do |i|
	if i % 7 == 0 && i % 5 != 0
  puts i
  end
 end