basket = {}
overall_value = 0

loop do
  print "Enter name of a product or command 'stop' if you want to stop a process: "
  product = gets.chomp
  break if product == "stop"
  if basket[product]
    puts "#{product} already in your basket"
    next
  end
  print "Enter a price of a product: "
  price = gets.chomp.to_f
  print "Enter a quantity of a product: "
  quantity = gets.chomp.to_f

  value = price * quantity
  basket[product] = {
    price: price,
    quantity: quantity,
    value: value
  }
end

basket.each do |key, cost|
  overall_value += cost[:value]
end

puts "Your basket: #{basket}"
puts "Overall cost of your basket: #{overall_value}"
