=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [After Midnight (Part 2)](https://launchschool.com/exercises/34f92353)
FileName: x03.rb
Answered On: 10/29/2020
=end

=begin
As seen in the previous exercise, the time of day can be represented as the 
number of minutes before or after midnight. If the number of minutes is positive, 
the time is after midnight. If the number of minutes is negative, the time is 
before midnight.

Write two methods that each take a time of day in 24 hour format, and return the 
number of minutes before and after midnight, respectively. Both methods should 
return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
=end


def convert_to_minutes(string, factor)
  return 0 if string == '24:00'
  hours, minutes = string.split(":")
  total_minutes = (hours.to_i * 60) + (minutes.to_i * factor)
end

def after_midnight(string)
  convert_to_minutes(string,1)
end

def before_midnight(string)
  convert_to_minutes(string,-1)
end

p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0

p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0
