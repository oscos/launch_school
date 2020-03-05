# Launch School Book: Introduction To Programming With Ruby
# hashes_.rb 
# Answered On: 01/27/2020

# INSTRUCTIONS:
# Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.


fruits = {apples: "red", oranges: "orange", plums: "purple"}
veggies = {celery: "green", carrots: "orange", onions: "white"}

puts fruits.merge(veggies)
puts fruits
puts veggies

puts fruits.merge!(veggies)
puts fruits
puts veggies




