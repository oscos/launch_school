# Launch School Book: Introduction To Programming With Ruby
# more_stuff_02.rb 
# Answered On: 03/05/2020

# INSTRUCTIONS:
# What will the following program print to the screen? 
# What will it return?

puts "What will the following program print to the screen?" 
puts "What will it return?"

def execute(&block)
    # block.call
    block
end

# p execute { puts "Hello from inside the execute method!" }
execute { puts "Hello from inside the execute method!" }

puts "the program will print nothing to the screen"
puts "since no call was made to the block."
puts ""
puts "The program will return a proc object but no output."





