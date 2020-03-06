# Launch School Book: Introduction To Programming With Ruby
# more_stuff_.rb 
# Answered On: 03/04/2020

# INSTRUCTIONS:
# Modify the code in exercise 2 to make the block execute properly.

puts "Modify the code in exercise 2 to make the block execute properly."

def execute(&block)
    block.call
end

# p execute { puts "Hello from inside the execute method!" }
execute { puts "Hello from inside the execute method!" }


