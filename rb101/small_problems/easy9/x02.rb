=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Double Doubles](https://launchschool.com/exercises/b5c55bc6)
FileName: x01.rb
Answered On: 11/06/2020
Updated: 03/30/2021
PEDAC: 03/30/2021
=end

=begin
  A double number is a number with an even number of digits whose left-side 
  digits are exactly the same as its right-side digits. For example, 44, 3333, 
  103103, 7676 are all double numbers. 444, 334433, and 107 are not.

  Write a method that returns 2 times the number provided as an argument, unless 
  the argument is a double number; double numbers should be returned as-is.
=end

def twice(num)
  arr =  num.digits.reverse
  midpoint = arr.size / 2
  
  if arr[0...midpoint] == arr[midpoint..-1] 
    arr.join.to_i
  else
    num * 2
  end
end

# Additional solution added 03/08/2021
def twice(int)
  arr = int.digits.reverse
  mid = (arr.size / 2)
  arr[0...mid] ==  arr[mid..-1] ? int : int * 2
end

# Additional solution added 03/08/2021
def twice(int)
  arr = int.digits
  arr2 = arr.each_slice((arr.size / 2.to_f).ceil).to_a
  arr2.size == 2 && arr2[0] == arr2[1] ? int : int * 2
end

# Additional solution added 03/30/2021
def twice(n)
  arr = n.digits.reverse
  mid = arr.size / 2
  left, right = arr[0...mid], arr[mid..-1]
  left == right ? n : n * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10