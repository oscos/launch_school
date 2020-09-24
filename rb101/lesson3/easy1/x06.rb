=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 1(https://launchschool.com/lessons/263069da/assignments/e2593fe1)
FileName: ex06.rb
Answered On: 09/23/2020
=end

# show two different ways to put the expected "Four score and " in front of it.

# Solution #1
famous_words = "seven years ago..."
puts "Four score and #{famous_words}"

#Solution #2
# famous_words = "seven years ago..."
# puts "Four score and " + famous_words

#Solution #3
# famous_words = "seven years ago..."
# puts "Four score and ".concat(famous_words)

# Soution #4
# famous_words = "seven years ago..."
# puts famous_words.prepend("Four score and ")

# Solution #5
# famous_words = "seven years ago..."
# puts famous_words.insert(0,"Four score and ")
