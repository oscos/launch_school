=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: [Combining Arrays](https://launchschool.com/exercises/1ba11514)
FileName: x06.rb
Answered On: 11/01/2020
=end

=begin
  Write a method that takes two Arrays as arguments, and returns an Array that 
  contains all of the values from the argument Arrays. There should be no duplication 
  of values in the returned Array, even if there are duplicates in the original Arrays.
=end

def merge(arr1, arr2)
  arr1 | arr2
end

# Additional Solution added 03/01/2021
def merge(arr1, arr2)
  arr1.zip(arr2).flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]