=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x03.rb
Answered On: 10/25/2020
=end

# require "pry"
# require "pp"

# For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# Solutions:

p arr1[2][1][3]
p arr2[1][:third][0]
p arr3[2][:third][0][0]
p hsh1["b"][1]

p hsh2[:third].key(0)  # returns first occurance
p hsh2[:third].keys[0]  # takes into account index
