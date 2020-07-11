# Launch School - Intro to Ruby
# Basics - ex03.rb
# Answered 07/08/2020

movies = Hash.new(0)

i = 5
while i > 0 do
    title = (0...8).map { (65 + rand(26)).chr }.join
    year = rand(1980..2020)
    movies[title.to_sym] = year
    # movies.store(title, year)   # this works too and easier to remember!
    i -= 1
end 
p movies

movies.each do
    |k,v|
    puts v
end


