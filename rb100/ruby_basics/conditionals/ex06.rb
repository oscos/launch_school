# ex06.rb
# Stoplight (Part 1)
# Answered On: 06/28/2020 

# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts("Go!")
when 'yellow'
  puts("Slow down!")
when 'red'
  puts("Stop!")
end