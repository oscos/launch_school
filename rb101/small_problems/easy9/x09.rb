=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Grade book](https://launchschool.com/exercises/063fa805)
FileName: x09.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
=end

=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
=end

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

# Additional Solution 03/31/2021
def get_grade(n1, n2, n3)
  grades = [n1, n2, n3]
  avg = (grades.sum / grades.size)

    case
      when (90..100).include?(avg) then "A"
      when (80..90).include?(avg) then "B"
      when (70..80).include?(avg) then "C"
      when (60..70).include?(avg) then "D"
      else "F"
    end

end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"