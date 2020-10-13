=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x01.rb
Answered On: 10/12/2020
=end

# require "pry"
# require "pp"


puts("Using each_with_index:")
def flintstones_hash(arr)
  fun_hash = Hash.new(0)
  
  arr.each_with_index do |value, index|
    fun_hash[value] = index
  end
  
  fun_hash
end
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
p flintstones_hash(flintstones)

puts

puts("Using each_with_object:")
def flintstones_hash2(arr)
  arr.each_with_object({}) do |value, fun_hash|
    fun_hash[value] = arr.index(value)
  end
end  
flintstones2 = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
p flintstones_hash2(flintstones2)
