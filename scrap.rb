def hint(code, guess)

  hint_array = [nil, nil, nil, nil]
  
  code.each_with_index do |peg, index|
    
  code 
  if code[0] == guess[0]
    hint_array.insert(0, "red")
  elsif code[1] == guess[1]
    hint_array.insert(1, "red")
  else
    puts "nothing matches"
  end
  
 hint_array
   
end

hint(["A", "B", "C", "D"], ["A", "B" "J", "G"])