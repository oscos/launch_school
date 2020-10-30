=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [What Century is That?](https://launchschool.com/exercises/d6a8f167)
FileName: x02.rb
Answered On: 10/29/2020
=end

=begin
Write a method that takes a year as input and returns the century. The return 
value should be a string that begins with the century number, and ends with 
st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 
comprise the 20th century.

=end

def century(number)

  year_00 = number.digits[0] == 0 &&  number.digits[1] == 0
  century_year = year_00 ? number / 100 : (number / 100) + 1  

  case
  when century_year.digits[1] == 1 then "#{century_year}th"   
  when century_year.digits[0] == 1 then "#{century_year}st" 
  when century_year.digits[0] == 2 then "#{century_year}nd"  
  when century_year.digits[0] == 3 then "#{century_year}rd"     
  else "#{century_year}th"
  end

end

p century(5) == '1st'
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'