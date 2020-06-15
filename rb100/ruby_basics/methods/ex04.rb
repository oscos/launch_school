# ex04.rb
# Greeting Through Methods (Part 2)

# Write a method named greet that invokes the following methods:

def method_a
    "Hello"
end

def method_b
    "World!"
end

def greet(param1, param2)
    param1 + " " + param2
end

puts greet("hello", "world")