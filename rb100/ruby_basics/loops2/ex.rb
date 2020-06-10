# ex06.md
# Get the Sum
# Given the array below, use loop to remove and print each name. Stop the loop 
# once names doesn't contain any more elements.  Keep in mind to only use loop, 
# not while, until, etc.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts "Hello, #{names.shift}!" # first to last
  # puts names.pop # last to first
  break if names.empty?
end