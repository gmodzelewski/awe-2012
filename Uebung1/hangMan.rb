#hangMan.rb

incorrects = 0
max_incorrects = 5
result = ""

puts "Welcome to HANGMAN!. You have #{ max_incorrects } false attempts."

word = File.open( '/usr/share/dict/words' ).readlines.sample.chomp.upcase
word.size.times { result += "_" }

puts "Please enter a letter.\n#{result}"

while incorrects < max_incorrects
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
   incorrects += 1
 end

 if result == word
   puts "YOU WON!"
   exit
 end

 puts result
 remaining = max_incorrects - incorrects
 
 puts "#{ remaining } remaining shots...\n"
end

puts "YOU LOST! Hangover! Correct would have been: #{ word }"
exit