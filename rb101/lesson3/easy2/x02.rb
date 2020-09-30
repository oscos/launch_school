=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 2](https://launchschool.com/lessons/263069da/assignments/86725689)
FileName: ex02.rb
Answered On: 09/24/2020
=end

# Convert the string in the following ways (code will be executed on original 
# munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

# 1. "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# 2. "The munsters are creepy in a good way."
# 3. "the munsters are creepy in a good way."
# 4. "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

p munsters_description.swapcase
#p munsters_description.gsub("M","m")
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

