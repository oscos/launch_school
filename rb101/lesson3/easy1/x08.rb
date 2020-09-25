=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 1(https://launchschool.com/lessons/263069da/assignments/e2593fe1)
FileName: ex07.rb
Answered On: 09/23/2020
=end

# Turn this into an array containing only two elements: 
# Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

solution #1
barney_array = []
barney =
  flintstones.select do |k,v|
    v == 2
  end
p barney.to_a.flatten!

# Solution #2
# p flintstones.assoc("Barney")

# # Solution #3
# p flintstones.rassoc(2)