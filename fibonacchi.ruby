numbers = [0]
a = 0
b = 1
c = 0

while c < 100
  a = a + b
  numbers << a
  b = a + b
  numbers << b
  c = a + b
end
puts numbers
