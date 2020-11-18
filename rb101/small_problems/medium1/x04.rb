=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [1000 Lights](https://launchschool.com/exercises/61d687f4)
FileName: x04.rb
Answered On: 11/07/2020
=end

=begin
  You have a bank of switches before you, numbered from 1 to n. Each switch is 
  connected to exactly one light that is initially off. You walk down the row of 
  switches and toggle every one of them. You go back to the beginning, and on 
  this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, 
  you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
  You repeat this process and keep going until you have been through n repetitions.
  
  Write a method that takes one argument, the total number of switches, and 
  returns an Array that identifies which lights are on after n repetitions.
  
  Example with n = 5 lights:
  
  round 1: every light is turned on
  round 2: lights 2 and 4 are now off; 1, 3, 5 are on
  round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
  round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
  round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
  The result is that 2 lights are left on, lights 1 and 4. 
  The return value is [1, 4].
  
  With 10 lights, 3 lights are left on: lights 1, 4, and 9. 
  The return value is [1, 4, 9].
  =end

=begin
Problem:
  Input: number
  
  Output: Array
  
  Requirements: 
    - array with n digits
    - only multiples of n are switched on/off
    - numbers with odd number of iterations are on
    - numbers with even number of iterations are off
    - first pass all numbers are on
    - each iteration, the number is toggled
    - what happens if nil, 0, empty array, return value 
  Mental model:
    Given a number n, write a method that includes a collection of 
    all numbers from 1 upto n. 
    Iterate throught each of the numbers `n` times, and for every multiple of
    that number, return the opposite boolean value. 
    Once all the iterations are complete:
      - odd iterations counts leave the number on
      - even iterations counts leave the number off.

Example:
  
  With 2 digits:
    1 2 3 4 5 # Pass 1
      2   4   # Pass 2
        3     # Pass 3
          4   # Pass 4
            5 # Pass 5
    1 0 0 1 0 # 0-Off 1-On

  With 10 digits:
    1 2 3 4 5 6 7 8 9 10 # Pass 1
      2   4   6   8   10 # Pass 2
        3     6     9    # Pass 3
          4       8      # Pass 4
            5         10 # Pass 5
              6          # Pass 6
                7        # Pass 7
                  8      # Pass 8
                    9    # Pass 9
                      10 # Pass 10
    1 0 0 1 0 0 0 0 1 0 # 0-Off 1-On

Data Structure: Integer, Array

Algorithm:
  - create method switch_status that accepts one positive integer as parameter `n`
  - create collection `num_arr` of 1 up to `n`
  - iterate through collection `n` number of times, 
    - divide each element by each element in collection.  
    - if element is divisible change boolean status to boolean counterpart ie.
      i.e if current value is true, switch to off
Code: see below

=end

# solution #1 - (refactored solution #2 below)
def switch_status(n)
  collection = []
  num_arr = (1..n).to_a
  divisor = 1
  loop do
    break if divisor == num_arr.size + 1
    num_arr.each { |n| collection << n if n % divisor == 0 }
    divisor += 1
  end
  collection.tally.select { |k,v| v.odd? }.keys
end

# solution #2
def switch_status(n)
  collection = []
  num_arr = (1..n).to_a
  counter = 0
  divisor = 1
  loop do
    break if divisor == num_arr.size + 1
    loop do 
      break if counter == num_arr.size
      current_value = num_arr[counter]
    #p "counter: #{counter} - current_value: #{current_value} - divisor: #{divisor} = #{current_value % divisor}"
      collection << current_value if current_value % divisor == 0
      counter += 1
    end
    counter = 0
    divisor += 1
  end
  #p collection
  collection.tally.select { |k,v| v.odd? }.keys
end


p switch_status(5)
p switch_status(10)
p switch_status(10)
p switch_status(20)
p switch_status(30) 
p switch_status(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]