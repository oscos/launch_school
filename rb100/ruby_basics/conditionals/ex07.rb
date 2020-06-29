# ex07.rb
# Stoplight (Part 2)
# Answered On: 06/28/2020 

# Convert the following case statement to an if statement.

stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts("Go!")
elsif stoplight == 'yellow'
  puts("Slow down!")
else
  puts("Stop!")
end