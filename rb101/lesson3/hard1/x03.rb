=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Hard](https://launchschool.com/lessons/263069da/assignments/a3c602d1)
FileName: x02.rb
Answered On: 10/01/2020
=end

# require "pry"
# require "pp"

# What do you expect to happen when the greeting variable is referenced in the 
# last line of the code below?

# Question x03-A
#def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"


# Question x03-B
# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"


# Question x03-C
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"