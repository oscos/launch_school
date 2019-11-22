# Launch School Book: Introduction To Programming With Ruby
# practice_each.rb 
# Answered On: 11/17/2019

# INSTRUCTIONS:
# 

names = ['Bob','Joe','Steve','Janice','Susan','Helen']
# names.each { |name| puts name }
x = 1

names.each do
  |name|
  puts "#{x}. #{name}"
  x += 1
end
