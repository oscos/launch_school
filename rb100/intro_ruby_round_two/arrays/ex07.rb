# Launch School - Intro to Ruby
# arrays - ex03.rb
# Answered On 07/23/2020

# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

arr.flatten.each_with_index {|value, key| puts "#{key} : #{value} "}
