=begin
Launch School: RB101-RB109 - Small Problems - Easy 8
ExerciseName: [fizzbuzz](https://launchschool.com/exercises/f1c61d35)
FileName: x06.rb
Answered On: 11/05/2020
Updated: 03/30/2021
PEDAC: 03/30/2021
=end

=begin
  Write a method that takes two arguments: the first is the starting number, 
  and the second is the ending number. Print out all numbers between the two 
  numbers, except if a number is divisible by 3, print "Fizz", if a number is 
  divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, 
  print "FizzBuzz".
=end

def fizzbuzz(num1, num2)
  num_range = (num1..num2).to_a
  result =
    num_range.map do |num|
      if num % 3 == 0 && num % 5== 0
        "Fizz Buzz"
      elsif num % 3 == 0
        "Fizz"
      elsif num % 5 == 0
        "Buzz"
      else
        num
      end
    end
  result.join(', ')
end


# Solution Added On 03/08/2021
def fizzbuzz(n1, n2)
  result = []
  n1.upto(n2) do |n|
    result << numval(n)
  end
  result 
end
def numval(n)
  case 
    when n % 3 == 0 && n % 5 == 0 then "FizzBuzz"
    when n % 3 == 0 then "Fizz"
    when n % 5 == 0 then "Buzz"
    else n
  end
end

# Additional Solution 03/30/2021
def fizzbuzz(n1, n2)
  (n1..n2).each do |n|
    if n % 3 == 0 && n % 5 == 0 then puts "FizzBuzz"
    elsif n % 3 == 0 then puts "Fizz"
    elsif n % 5 == 0 then puts "Buzz"
    else puts n 
    end
  end
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz