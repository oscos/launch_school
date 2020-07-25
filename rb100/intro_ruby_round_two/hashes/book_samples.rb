# Launch School - Intro to Ruby
# hashes - ex01.rb
# Answered On 07/23/2020

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}

puts ""
puts "has_key?"
p name_and_age.has_key?("Steve")
p name_and_age.has_key?(["Steve","Joe"])
p name_and_age.has_key?("Paul")

puts ""
puts "select"
p name_and_age.select {|k,v| (k=="Bob" || v == 19)}
p name_and_age.select {|k,v| k=="Bob"}
p name_and_age.select {|k,v| v >= 31 }

puts ""
puts "fetch"
p name_and_age.fetch("Joe")
p name_and_age.fetch("Larry","No Larry KEY here, sorry!")
p name_and_age.fetch("Tom") {|x| "No #{x} here, sorry!"}

puts ""
puts "to_a"
p name_and_age.to_a
p name_and_age.to_a[0]
p name_and_age.to_a[0][0]

puts ""
puts "keys"
p name_and_age.keys
name_and_age.keys.each {|k| puts "The array key using both keys and each is: #{k}"}
name_and_age.each {|k,v| puts "The array key using only each is: #{k}"}

puts ""
puts "values"
p name_and_age.keys
name_and_age.values.each {|v| puts "The array value using both keys and each is: #{v}"}
name_and_age.each {|k,v| puts "The array value using only each is: #{v}"}
