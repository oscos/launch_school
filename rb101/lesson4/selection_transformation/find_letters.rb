=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Samples
ExerciseName: [Lesson 4](https://launchschool.com/lessons/85376b6d/assignments/ced192be)
FileName: find_letters.rb
Answered On: 10/01/2020
=end

# require "pry"
# require "pp"


def find_letters(alphabet)
  selected_letters = ''
  counter = 0

  loop do 
    break if counter == alphabet.size
      
      current_letter = alphabet[counter]
      selected_letters << current_letter if current_letter == 'g'
      
    counter += 1
  end
  
  selected_letters
end 
    
alphabet = 'abcdefghijklmnopqrstuvwxyz'
p find_letters(alphabet)