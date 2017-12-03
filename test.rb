hh = {}
loop do
  puts "enter product id^"
  id = gets.chomp

  puts "Vvedite kolichestvo: "
  n = gets.chomp.to_i

  hh[id] = hh[id].to_i +  n

  puts hh.inspect
end
