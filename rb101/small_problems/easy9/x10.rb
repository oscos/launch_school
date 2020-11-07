=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Grocery List](https://launchschool.com/exercises/c1dfffc8)
FileName: x10.rb
Answered On: 11/06/2020
=end

=begin
  Write a method which takes a grocery list (array) of fruits with quantities 
  and converts it into an array of the correct number of each fruit.
=end

# solution #1
def buy_fruit(arr)
  result = []
  arr.each do |k,v|  # each k,v picks up first two elements of current arr.
    v.times do
      result << k
    end
  end  
  result
end

# solution #2
def buy_fruit(arr)
  result =
    arr.map do |k,v|
      [k] * v
    end  
  result.flatten
end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]