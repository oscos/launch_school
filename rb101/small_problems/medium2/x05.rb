def triangle(n1, n2, n3)
  arr = [n1, n2, n3]
  counts = arr.uniq.count 
  case
    when arr.include?(0) then :invalid
    when (arr.sum - [arr.max].sum) < [arr.max].sum then :invalid
    when counts == 3 then :scalene
    when counts == 2 then :isosceles
    else :equilateral
  end
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid