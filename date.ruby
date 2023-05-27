puts "Write a day: "
date = gets.chomp.to_i
puts "Write a month(number): "
month = gets.chomp.to_i
puts "Write a year: "
year = gets.chomp.to_i

if year % 100 == 0 && year % 400 != 0
  leap_year = false
elsif year % 400 == 0
  leap_year = true
elsif year % 4 == 0
  leap_year = true
else
  leap_year = false
end

days_in_months = [31, 29, 31 ,30 ,31, 30, 31, 31, 30, 31, 30, 31]
days_in_months[1] = 28 if leap_year == false

result = date + days_in_months.take(month - 1).sum
puts "#{result} - serial number of the date"
