# Launch School Book: Introduction To Programming With Ruby
# sample_excerise_01.rb 
# Answered On: 11/19/2019

# INSTRUCTIONS:
# write two functions. one that mutates the caller the other one does not.

def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3}
end

a = [1,2,3,4,5,6]

mutate(a)
not_mutate(a)


puts a
