# ex05.md
# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
i = 0

while say_hello
  puts 'Hello!'
  i += 1
  say_hello = false if i == 5  
end