# ex02.rb
# More Than One
# Answered On: 07/02/2020

# In the code below, an array containing different types of pets is assigned to pets.

pets = ['cat', 'dog', 'fish', 'lizard']

# Select 'fish' and 'lizard' from pets at the same time, assign the return value 
# to a variable named my_pets, then print the value of my_pets.

# Expected Output
# I have a pet fish and a pet lizard!

my_pet = pets[2,3]

puts("I have a pet #{my_pet[0]} and a pet #{my_pet[1]}!")