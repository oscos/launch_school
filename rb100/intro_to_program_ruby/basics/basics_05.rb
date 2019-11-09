# Launch School Book: Introduction To Programming With Ruby
# The Basics - Excercise 05 
# Answered On: 11/09/2019

# INSTRUCTIONS:
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# NOTES: 
# The aha moment was when I realized I needed 
# to capture the previous and current i values 
# in seperate variables in order to multiply them together.
#
# Helpful Articles: 
# https://medium.com/@daweiner16/factorial-using-ruby-app-academy-practice-problem-c1a179ac445f
# https://medium.com/@PolinaHackTech/2-factorial-method-in-ruby-app-academy-prep-work-2c5ed5cc8706
#
# Topics to Follow Up On: Injection, Recursion
#
# TODO: Add a messge containing the number being factored with the each result.

arr = [5,6,7,8]

arr.each do
  |i|
  result = 1
  while i > 0 do
    result = (result * i)
    i -= 1
  end
  puts result  
end

###  START Of Thinking through the solution ###
=begin

  # STEP 1: output values of array
  arr.each do
    |i|
    puts i
  end

  # STEP 2: take first array value and count down
  i = arr[0]
  while i > 0 do
    i = i - 1
    puts i
  end
  
  # STEP 3: introduce new variable to capture the 
  # new i value and mulitply by previous i value.
  i = arr[0]
  result = 1
  while i > 0 do
    # puts i
    result = result * i
      i = (i - 1)
  end
  # puts i
  puts result  
  
  # STEP 4: Wrap previous step inside of Step 1.
  arr.each do
    |i| # replaces: i  = arr[0]
    result = 1
    while i > 0 do
      # puts i
      result = (result * i)
      i -= 1 # refactored i = (i - 1)
    end
    puts result
    # TODO: puts "the factorial value of [5,6,7,8] is: #{result}"  
  end
  
=end

###  END of Thinking through the solution ###
