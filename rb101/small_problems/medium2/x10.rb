def sum_square(int)
  ((1..int).sum)**2
end

def square_sum(int)
  (1..int).map {|n| n**2}.sum
end

def sum_square_difference(int)
  
  # Algo: ((1..int).sum)**2 - ((1..n)**2).sum 
 sum_square(int) -  square_sum(int)
end


p sum_square_difference(3) # == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150