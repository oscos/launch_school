# ex03.rb
# Broken Odometer
# Answered On: 07/02/2020

# Using the following code, delete the key :mileage and its associated 
# value from car.

car = 
{
    type:    'sedan',
    color:   'blue',
    mileage: 80_000,
    year:    2003
}

 car.delete(:mileage)

puts car