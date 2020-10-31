=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x14.rb
Answered On: 10/27/2020
=end

# require "pry"
# require "pp"

# Given this data structure write some code to return an array containing the 
# colors of the fruits and the sizes of the vegetables. The sizes should be 
# uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def fruit(hsh)
    hsh.map do |k,subhash|
      if subhash[:type] == "fruit"
        subhash[:colors].map do |color|
          color.capitalize
        end
      elsif subhash[:type] == "vegetable"
        subhash[:size].upcase
      end
    end
end

  