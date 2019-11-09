# Launch School Book: Introduction To Programming With Ruby
# The Basics - Excercise 03 
# Created By: oscos 
# Created Date: 11/08/2019

# INSTRUCTIONS:
# Write a program that uses a hash to store a list of movie titles with the year they came out. 
# Then use the puts command to make your program print out the year of each movie to the screen. 
# The output for your program should look something like this.

movies = {
  :jaws => 1975,
  :rocky => 1976,
  :gremlins => 1984,
  :ghost => 1990,
  :titanic => 1997,
  :transformers => 2007
}

=begin
puts movies[:jaws]
puts movies[:rocky]
puts movies[:gremlins]
puts movies[:ghost]
puts movies[:titanic]
puts movies[:transformers]
=end
            
movies.each do
  |movie, year|
  puts year
end
