# Launch School - Intro to Ruby
# Basics - ex06.rb
# Answered 07/09/2020

def square_me(num)
    num**2
end 

3.times {
    x = rand(1.0..11.0)
    y = square_me(x)
    puts "#{x} squared is: #{y}"
}