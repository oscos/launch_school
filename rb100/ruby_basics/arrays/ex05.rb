# ex05.rb
# What Color Are You?
# Answered On: 07/02/2020


# In the code below, an array containing different types of colors is assigned to colors.

colors = ['red', 'yellow', 'purple', 'green']

# Use Array#each to iterate over colors and print each element.

# Expected Output:
# I'm the color red!
# I'm the color yellow!
# I'm the color purple!
# I'm the color green!

colors.each do
    |color|
    puts("I'm the color #{color}")
end