=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: []()
FileName: x0.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
=end

=begin
  Create a method that takes two integers as arguments. The first argument is a 
  count, and the second is the first number of a sequence that your method will 
  create. The method should return an Array that contains the same number of 
  elements as the count argument, while the values of each element will be 
  multiples of the starting number.

  You may assume that the count argument will always have a value of 0 or greater, 
  while the starting number can be any integer value. If the count is 0, an 
  empty list should be returned.
=end

def sequence(num1, num2)
  (1..num1).map do |num|
    num2 * num
  end
end

# additional solution added 03/09/2021
def sequence(ncount,nfirst)
  (1..ncount).map do |n|
    n * nfirst
  end
end

# additional solution added 03/09/2021
def sequence(ncount,nfirst)
  result = []
  current_value = nfirst
  ncount.times do |_|
    result << current_value
    current_value += nfirst
  end
  result
end

# additional solution added 03/09/2021
def sequence(ncount,nfirst)
  result = []
  current_value = nfirst
  1.upto(ncount) do |_|
    result << current_value
    current_value += nfirst
  end
  result
end

# additional solution added 03/09/2021
def sequence(ncount,nfirst)
  result = []
  counter = 0
  current_value = nfirst
  loop do 
    break if counter == ncount
    result << current_value
    current_value += nfirst
    counter += 1
  end
  result
end

# additional solutions 03/31/2021
def sequence(n1, n2)
  results = []
  1.upto(n1) do |idx|
    results << n2 * idx
  end
  
  results
end
def sequence(n1, n2)
  (1..n1).map do |idx|
    n2 * idx
  end
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
