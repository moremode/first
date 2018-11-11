require 'date'

print 'Investment in month: '
in_month = gets.chomp.to_i
print 'When you take away year: '
year_end = gets.chomp.to_i
print 'When you take away month: '
month_end = gets.chomp.to_i

d = DateTime.now

monthes = (year_end - d.strftime("%Y").to_i) * 12 + (month_end - d.strftime("%m").to_i)

invoice = in_month

for index in 1..monthes
   invoice = invoice * (1 + 0.07/12) + in_month
end

invoice = invoice - in_month

puts "In the end of the time: #{invoice.round(2)}"
