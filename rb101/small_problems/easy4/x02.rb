=begin
Launch School: RB101-RB109 - Small Problems - Easy 4
ExerciseName: [What Century is That?](https://launchschool.com/exercises/d6a8f167)
FileName: x02.rb
Answered On: 10/29/2020
Updated On: 02/18/2021
Updated On 03/20/2021 
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

# Solution #2 On 02/18/2021
def century(int)
  num = int.divmod(100)
  century = num.last == 0 ? num.first : num.first + 1
  
  case 
    when century.digits[1] == 1 then "#{century}th"
    when century.digits[0] == 1 then "#{century}st"
    when century.digits[0] == 2 then "#{century}nd"
    when century.digits[0] == 3 then "#{century}rd"
    else "#{century}th"
  end
end

# Solution #3 On 02/18/2021 Total Min: 28, includes 10 min on PEDAC
def century(input_int)
  arr = input_int.divmod(100)
  century_year = arr[1] == 0 ? arr[0]  : arr[0] + 1
  century_str = century_year.to_s
  
  case
    when century_str.end_with?("11","12","13") then "#{century_str}th"
    when century_str.end_with?("1") then "#{century_str}st"
    when century_str.end_with?("2") then "#{century_str}nd"
    when century_str.end_with?("3") then "#{century_str}rd"
    else "#{century_str}th"
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