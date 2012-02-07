#zum manuellen Testen diese Datei aufrufen
require './gcd'

puts "Insert the first number"
num0 = gets
puts "Insert the second number"
num1 = gets

puts GCD.new.greatest_common_divisor(num0, num1)