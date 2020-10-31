=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [https://launchschool.com/exercises/29ffd590](Bannerizer)
FileName: x10.rb
Answered On: 10/30/2020
=end

=begin
Write a method that will take a short line of text, and print it within a box.

Examples:

  print_in_box('To boldly go where no one has gone before.')
  +--------------------------------------------+
  |                                            |
  | To boldly go where no one has gone before. |
  |                                            |
  +--------------------------------------------+
  
  print_in_box('')
  +--+
  |  |
  |  |
  |  |
  +--+
=end

def print_in_box(str)
  box_length = str.size + 2
  dash_line  = "+" + ("-" * box_length) + "+"
  pipe_line  = "|" + (" " * box_length) + "|"
  text       = "| " + str + " |"

  puts dash_line
  puts pipe_line
  puts text
  puts pipe_line
  puts dash_line  
end

print_in_box('To boldly go where no one has gone before.')
print_in_box("")