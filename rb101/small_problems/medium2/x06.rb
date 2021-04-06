def triangle(n1, n2, n3)
  arr = [n1, n2, n3] 
  case
    when arr.include?(0) then :invalid
    when (arr.sum) < 180 then :invalid
    when arr.include?(90) then :right
    when arr.all?{|a| a < 90} then :acute
    when arr.any?{|a| a > 90} then :obtuse
  end
end 