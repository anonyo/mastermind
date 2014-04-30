colors = ["R", "G", "B", "Y", "O", "P"]
code = "#{colors[rand(6)]}#{colors[rand(6)]}#{colors[rand(6)]}#{colors[rand(6)]}".scan(/./)

puts code

guess_count = 0

loop do 
  
  guess = gets.chomp.capitalize.scan(/./)
  hint = []
  
  guess_count += 1

  if guess == code
    puts "you broke the code in #{guess_count} guess"
    break
  elsif guess_count > 9
    puts "game over"
    break
  elsif code[0] == guess[0] || code[1] == guess[1] || code[2] == guess[2] || code[3] == guess[3]
    puts "black"
  elsif code.include?(guess[0] || guess[1] || guess[2] || guess[3])
    puts "white"
  elsif guess.length > 4 || guess.length < 4
    puts "please enter code that contains 4 letters"
  end


end