# ex03.rb
# Free the Lizard
# Answered On: 07/02/2020


# In the code below, an array containing different types of pets is assigned to pets. 
# Also, the return value of pets[2..3], which is ['fish', 'lizard'], is assigned to 
# my_pets.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2,3]

# Remove 'lizard' from my_pets then print the value of my_pets.

# Expected Output
# I have a pet fish!

my_pet.pop # same as my_pet(# of last item in array) which in this case is my_pet.pop(1)

puts("I have a pet #{my_pet[0]}!")