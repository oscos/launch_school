=begin
Launch School: RB101-RB109 - Small ProblemsEasy 1 - How Many?
ExerciseName: [How Many?(https://launchschool.com/exercises/d5c51b39)
FileName: ex04.md
Answered On: 09/12/2020
=end

# Write a method that counts the number of occurrences of each element in a given array.

# require 'pry'

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# vehicles.tally  # new method > v2.7, no longer working on my machine, running v2.7.1

def count_occurrences(arr)  

  h1 = Hash[arr.group_by{|auto| auto}.map{|k,v|[k,v.size]}]  
  
  ### other working solutions below ###
  
  
  # h1 = Hash.new(0)
  # arr.uniq.each do |auto_group|
  #   h1[auto_group] = arr.count(auto_group)
  # end
  

  # h1 = Hash.new(0)
  # arr.each do |vehicle|
  #   h1[vehicle] += 1
  # end 
  
  
  # arr.each do |word|
  #   if h1.has_key?(word)
  #     h1[word] += 1
  #     # h1[word] = h1[word] + 1
  #     binding.pry
  #   else
  #     h1[word] = 1
  #   end
  # end

  h1.each {|k,v|  puts "#{k} => #{v}" }
  
end

count_occurrences(vehicles)

