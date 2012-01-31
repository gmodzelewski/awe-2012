#hangMan.rb


incorrects = 0
maxIncorrects = 5
result = "";

puts "Willkommen bei Hangman. Sie haben insgesamt #{maxIncorrects} Versuche zur Verfuegung. \n Bitte geben Sie das Wort ein, was zu loesen ist:"
word = gets
word.chop!
word.size.times{result = result + "_"}
puts "Bitte geben Sie einen Buchstaben ein. \n"

while (incorrects < maxIncorrects)
 guess = gets
 guess.chop!
 y = 0
 isInside = false
 word.each_char do |pos|
    if pos == guess
       result[y] = pos
       isInside = true
    end
    y += 1
 end

 if !isInside
   incorrects = incorrects+1
 end

 if result == word
   puts "Sie haben gewonnen!"
   exit
 end

 puts result
 print  "Sie haben noch ",maxIncorrects-incorrects," Versuche \n"
end

puts "Sie haben leider nicht gewonnen. Es tut mir leid"
exit

