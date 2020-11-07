=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Grade book](https://launchschool.com/exercises/063fa805)
FileName: x09.rb
Answered On: 11/06/2020
=end

=begin

=end

  # p h1 = { 90: "A", 80: "B", 70: "C", 60: "D" }
  p h2 = { a: 1, b: 2, c: 3 }

def get_grade(num1, num2, num3)
  avg = (num1 + num2 + num3) / 3

  case 
    when avg.between?(90,100) then "A"
    when avg.between?(80,89) then "B"
    when avg.between?(70,79) then "C"
    when avg.between?(60,69) then "D"
    else "F"
  end
  
end


p get_grade(95, 90, 93) 

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"