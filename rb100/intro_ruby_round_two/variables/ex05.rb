# Launch School - Intro to Ruby
# Variables - ex04.rb
# Answered On 07/11/2020

#Guess result, Given:
x = 0
3.times do
  x += 1
end
puts x

#Guess result, Given:
y = 0
3.times do
  y += 1
  x = y
end
puts x