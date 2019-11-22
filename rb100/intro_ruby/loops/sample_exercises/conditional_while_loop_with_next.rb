# Launch School Book: Introduction To Programming With Ruby
# conditional_while_loop_with_next.rb 
# Answered On: 11/17/2019

# INSTRUCTIONS:
# 

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
  
