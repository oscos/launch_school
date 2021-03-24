=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [Running Totals](https://launchschool.com/exercises/ba434183)
FileName: x06.rb
Answered On: 10/18/2020
Updated On: 03/21/2020
=end

=begin
  Write a method that takes an Array of numbers, and returns an Array with the 
  same number of elements, and each element has the running total from the 
  original Array.
=end

def running_total(arr)
  return [] if arr.empty?
  running_sum = [arr[0]]
  counter = 1
  loop do 
    break if counter == arr.size
    
    current_value = arr[counter]
    last_number = running_sum.last
    running_sum << current_value + last_number
    
    counter += 1
  end
  running_sum
end

# solutin #2 added 03/21/21
def running_total(arr)
  results = []
  total = 0
  arr.each do |el|
    total += el
    results << total
    total = total
  end
  results
end

# solution #3 is refactored solution #2 both added 03/21/2121
def running_total(input_arr)
  total = 0
  input_arr.map do |current_element|
    total += current_element
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []