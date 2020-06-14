# ex0.md
# Launch School Printer (Part 2)

# In an earlier exercise, you wrote a program that prints 'Launch School is the 
# best!' repeatedly until a certain number of lines have been printed. Our solution 
# looked like this:

# Modify this program so it repeats itself after each input/print iteration, 
# asking for a new number each time through. The program should keep running 
# until the user enters q or Q.

loop do

  user_string = nil
  user_number = nil

  loop do
    puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
    
    user_string = gets.chomp.downcase
    user_number = user_string.to_i
    
    break if user_string == 'q'
    
    break if user_number >= 3
    puts ">> That's not enough lines."
    
  end
  
  break if user_string == 'q'
  
  loop do
    puts "Launch School is the best!"
    user_number -= 1
    break if user_number == 0
  end

end 