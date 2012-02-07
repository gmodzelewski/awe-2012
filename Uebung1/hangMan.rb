#hangMan.rb

incorrects = 0
max_incorrects = 5
result = ""

puts "Willkommen bei Hangman. Sie haben insgesamt #{max_incorrects} Versuche zur Verfuegung."

word = File.open('/usr/share/dict/words').readlines.sample.chomp.upcase
word.size.times { result += "_" } 

puts result


puts word
puts "Bitte geben Sie einen Buchstaben ein."

while (incorrects < max_incorrects)
 guess = gets.chomp.upcase
 
 y = 0
 is_inside = false
 word.each_char do |letter|
    if letter == guess
       result[y] = letter
       is_inside = true
    end
    y += 1
 end

 if !is_inside
   incorrects = incorrects + 1
 end

 if result == word
   puts "Sie haben gewonnen!"
   exit
 end

 puts result
 remaining = max_incorrects - incorrects
 puts remaining
 
 puts  "Sie haben noch #{remaining} Versuche"
end

puts "Sie haben leider nicht gewonnen. Hangover!"
exit

