# ex04.rb
# One Isn't Enough
# Answered On: 07/02/2020


# Using the code below, select 'dog' from pets, add the return value to my_pets, 
# then print the value of my_pets.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2..3]
my_pet.pop

# Expected Output
# I have a pet fish and a pet dog!

my_pet.push(pets[1]) # same as my_pet(# of last item in array) which in this case is my_pet.pop(1)

puts("I have a pet #{my_pet[0]} and a pet #{my_pet[1]}!")