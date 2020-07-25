# Launch School - Intro to Ruby
# loops - ex02.rb
# Answered On 07/24/2020

h1 = {
 a: 100,
 b: 101,
 c: 102
}

h2 = {
 b: 201,
 c: 202,
 d: 203
}

h3 = {
 c: 301,
 d: 302,
 e: 303,
}

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 246, "c" => 300 }
# h3 = { "b" => 357, "d" => 400 }


# puts "Hello World!"

p h1.merge(h2, h3) 
# p h1.merge(h2).merge(h3)