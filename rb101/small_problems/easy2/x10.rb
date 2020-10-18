=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [Mutation](https://launchschool.com/exercises/383b2769)
FileName: ex09.rb
Answered On: 10/15/2020
=end

=begin
What will the following code print, and why? Don't run the code until you have 
tried to answer.

Examples: 
  name = 'Bob'
  save_name = name
  name.upcase!
  puts name, save_name
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Although array1 and array2 are seperate array objects.  They share the same
# elmement references, being that the << operator which is a mutating method, 
# was used to add the elements into array2.  This means it passed a reference
# to the actual values as oppose to copies of the values.
# Since both arrays point to the same element references, any mutation done to
# the elements in array1, alters the elements in array2 and vice versa.

# this can be tested by running the following line and seeing they share the same
# object_id

p array1[0].object_id == array2[0].object_id
