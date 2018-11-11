print 'Investment in month: '
in_month = gets.chomp.to_i
print 'When you take away year: '
year_end = gets.chomp.to_i
print 'When you take away month: '
month_end = gets.chomp.to_i
monthes = (year_end - 2018) * 12 + (month_end - 11)
puts monthes

invoice = in_month

for index in 1..monthes
   invoice = invoice * (1 + 0.07/12) + in_month
end

puts "In the end of the time: #{invoice}"
