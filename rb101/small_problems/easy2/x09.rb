=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [String Assigment](https://launchschool.com/exercises/a12ef94e)
FileName: ex09.rb
Answered On: 10/15/2020
=end

=begin
What does this print out? Can you explain these results?

Examples: 
  array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
  array2 = []
  array1.each { |value| array2 << value }
  array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
  puts array2
=end

# since both  `save_name` and `name` both point to the same String Object 'Bob'
# any modifications to the string object value affects both variable outputs.
# In this case the String object represented by the value `Bob` has been mutated
# when the `upcase!` mutating method is called on it.  As a result both, `name`
# and `save_name` will each output "BOB"
