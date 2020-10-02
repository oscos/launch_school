=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex04.rb
Answered On: 09/29/2020
=end

# require "pry"

=begin
Alyssa was asked to write an implementation of a rolling buffer. Elements are 
added to the rolling buffer and if the buffer becomes full, then new elements 
that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for 
modifying the buffer?". Is there a difference between the two, other than what 
operator she chose to use to add an element to the buffer?

=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Answer:  
# One main difference is that the method rolling_buffer1 which uses `<<` mutates 
# the caller `buffer`, while the method rolling_buffer2 uses reassignment which
# leaves the original object intact.


input_buffer =  %w(a b c)  # "abc" => errors out on 1
input_size = 3
input_element =  %w(d) #"def"

# # return values and outputs after running elements using first method
p input_buffer
p rolling_buffer1(input_buffer, input_size, input_element)
# p input_buffer
# p input_size
# p input_element
p("---")
p input_buffer
p rolling_buffer1(input_buffer, input_size, input_element)
# p input_buffer
# p input_size
# p input_element
p("---")
p input_buffer
p rolling_buffer1(input_buffer, input_size, input_element)
# p input_buffer
# p input_size
# p input_element
p("---")


# # return values and outputs after running elements using second method
# p input_buffer
# p rolling_buffer2(input_buffer, input_size, input_element)
# # p input_buffer
# # p input_size
# # # p input_element
# p("---")
# # return values and outputs after running elements using second method
# p input_buffer
# p rolling_buffer2(input_buffer, input_size, input_element)
# # p input_buffer
# # p input_size
# # # p input_element
# p("---")
# # return values and outputs after running elements using second method
# p input_buffer
# p rolling_buffer2(input_buffer, input_size, input_element)
# # p input_buffer
# # p input_size
# # # p input_element
# p("---")