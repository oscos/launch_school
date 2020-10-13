=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Samples
ExerciseName: [Lesson 4](https://launchschool.com/lessons/85376b6d/assignments/ced192be)
FileName: find_vowels.rb
Answered On: 10/11/2020
=end

# require "pry"
# require "pp"

def is_vowel?(current_char)
  vowels = 'aeiouAEIOU'
  vowels.include?(current_char)
end

def select_vowels(str)
  selected_vowels = ''
  counter = 0
  
  loop do
    break if counter == str.size
    
    current_value = str[counter]
    selected_vowels << current_value if is_vowel?(current_value) == true
    
    counter += 1
  end
  
  selected_vowels
end 

p select_vowels('the quick brown fox')      # => "euioo"

sentence = 'I wandered lonely as a cloud'
p select_vowels(sentence)                   # => "Iaeeoeaaou"