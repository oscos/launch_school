# ex08.rb
# Sleep Alert
# Answered On: 06/28/2020 

# In the code below, status is randomly assigned as 'awake' or 'tired'.

# Write an if statement that returns "Be productive!" if status equals 
# 'awake' and returns "Go to sleep!" otherwise. Then, assign the return 
# value of the if statement to a variable and print that variable.

status = ['awake', 'tired'].sample

# Solution 1:
# def active_method(parameter1)
  
#     return "Be productive" if parameter1 == 'awake'
#     "Go to sleep"

# end

# puts(active_method(status))

# Solution 2:

var1 = 
if status == 'awake' 
  'Be productive'
else
  "Go to sleep"
end

puts(var1)