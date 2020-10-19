=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Odd Lists](https://launchschool.com/exercises/7ced73ba)
FileName: x07.rb
Answered On: 10/18/2020
=end

def oddities(arr)
  even_arr = []
  counter = 0
  loop do 
    break if counter == arr.size
      current_value = arr[counter]
      even_arr <<  current_value if counter.even?
    counter += 1
  end 
  even_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []