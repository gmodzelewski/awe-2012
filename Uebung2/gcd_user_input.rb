#zum manuellen Testen diese Datei aufrufen
require './gcd'

puts "Insert the first integer number"
num0 = gets
puts "Insert the second integer number"
num1 = gets

puts GCD.new.greatest_common_divisor(num0, num1)