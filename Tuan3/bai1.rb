array = [2,7,9,1,4]

puts "nho nhat mang la: #{array.min} "
puts "lon nhat mang la: #{array.max}"
puts "trung binh mang: #{array.reduce(:+).to_f / array.length}"