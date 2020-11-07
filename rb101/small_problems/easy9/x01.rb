=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Welcome Stranger](https://launchschool.com/exercises/16ab1e1f)
FileName: x01.rb
Answered On: 11/06/2020
=end

=begin
  Create a method that takes 2 arguments, an array and a hash. The array will 
  contain 2 or more elements that, when combined with adjoining spaces, will 
  produce a person's name. The hash will contain two keys, :title and :occupation, 
  and the appropriate values. Your method should return a greeting that uses the 
  person's full name, and mentions the person's title and occupation.
=end

# solution #1
def greetings(arr, hsh)
  puts("Hello, #{arr[0]} #{arr[1]} #{arr[2]}!" +
    "Nice to have a #{hsh[:title]} #{hsh[:occupation]} around.")
end


# solution #2
def greetings(arr, hsh)
  full_name = arr.join(' ')
  job = hsh.values.join(' ')
  
  puts("Hello, #{full_name}! Nice to have a #{job} around.")
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.