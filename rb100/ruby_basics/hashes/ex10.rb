# ex09.rb
# Which Collection?
# Answered On: 07/02/2020


# Rewrite car as a nested array containing the same key-value pairs.

car = {
    type:  'sedan',
    color: 'blue',
    year:  2003
}


# car = 
# [
#     [:type , "sedan"],
#     [:color , "blue"],
#     [:year , 2003] 
# ]

# p(car)

# Other user submitted answer (dsessler7)
car_array = car.to_a
p(car_array)