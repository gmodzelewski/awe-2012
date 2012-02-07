#hangMan.rb

incorrects = 0
max_incorrects = 5
result = ""

puts "Willkommen bei Hangman. Sie haben insgesamt #{max_incorrects} Versuche zur Verfuegung."

word = File.open('/usr/share/dict/words').readlines.sample.chomp.upcase
puts word

puts "Bitte geben Sie einen Buchstaben ein. \n"

while (incorrects < max_incorrects)
 guess = gets
 guess.chomp!
 guess.upcase!
 y = 0
 is_inside = false
 word.each_char do |pos|
    if pos == guess
       result[y] = pos
       is_inside = true
    end
    y += 1
 end

 if !is_inside
   incorrects = incorrects+1
 end

 if result == word
   puts "Sie haben gewonnen!"
   exit
 end

 puts result
 puts  "Sie haben noch ",max_incorrects-incorrects," Versuche \n"
end

puts "Sie haben leider nicht gewonnen. Es tut mir leid"
exit

