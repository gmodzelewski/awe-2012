#hangMan.rb

incorrects = 0
max_incorrects = 5
result = ""

puts "Willkommen bei Hangman. Sie haben insgesamt #{max_incorrects} Versuche zur Verfuegung. \n Bitte geben Sie das Wort ein, was zu loesen ist:"
word = gets
word.chomp!
word.upcase!
word.size.times{result = result + "_"}
puts "Bitte geben Sie einen Buchstaben ein. \n"

word = File.sample('/usr/share/dict/words')
puts word

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

