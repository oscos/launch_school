# Launch School Book: Introduction To Programming With Ruby
# additional_exercises_10.rb 
# Answered On: 03/12/2020

# INSTRUCTIONS:
# Can hash values be arrays? Can you have an array of hashes? (give examples)

puts "Yes"
puts "-------"

movies = ['Boondock Saints','Departed','Shooter','Bourne Identity']
sodas = ['pepsi','coke','fanta','jarritos']
chips = ['doritos','ruffles','hot cheetos','taquis']
entry = ['wings','ribs','carne asada','enchiladas']

puts "hash of arrays"
show = {}
show[:movies] = movies

food = {}
food[:sodas] = sodas
food[:chips] = chips
food[:entry] = entry
p food

puts "-------"
puts "array of hashes"
hang_out = []
hang_out.push(show)
hang_out.push(food)
p hang_out