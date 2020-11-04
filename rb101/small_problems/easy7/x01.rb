=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Combine Two Lists](https://launchschool.com/exercises/3b64283e)
FileName: x01.rb
Answered On: 11/02/2020
=end

=begin
    Write a method that combines two Arrays passed in as arguments, and returns a 
    new Array that contains all elements from both Array arguments, with the 
    elements taken in alternation.
    
    You may assume that both input Arrays are non-empty, and that they have the 
    same number of elements.
=end

# def interleave(arr1, arr2)
#   arr3 = []
#   arr1.each_with_index do |element, idx|
#     arr3 << element << arr2[idx]
#   end
#   arr3
# end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end
  
def interleave(arr1, arr2)
  arr3 = []
  counter = 0
  
  loop do 
    break if arr3.size == (arr1.size + arr2.size)
      arr3 << arr1[counter]
      arr3 << arr2[counter]
    counter += 1
  end
  
  arr3
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


