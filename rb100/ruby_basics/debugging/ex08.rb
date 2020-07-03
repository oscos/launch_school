# ex08.rb
# Colorful Things
# Answered On: 07/03/2020

# The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# p colors.length
# p things.length

colors.shuffle!
things.shuffle!

i = 0
loop do
# break if i > colors.length  # Line Error Identified

# fix applied:
#   arrays start count at 0, length counts items from 1. Therefore use == not >
#   Also, when arrays are of different lenght, pick shorter one.
break if i == (colors.length > things.length ? things.length : colors.length)

if i == 0
  puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
else
  puts 'And a ' + colors[i] + ' ' + things[i] + '.'
end

i += 1
end