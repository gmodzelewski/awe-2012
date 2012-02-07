#zum manuellen Testen diese Datei aufrufen
require './gcd'

puts "Insert the first integer number"
num0 = gets.to_i.abs
puts "Insert the second integer number"
num1 = gets.to_i.abs

puts GCD.new.greatest_common_divisor(num0, num1)