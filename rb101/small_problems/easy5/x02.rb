=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [After Midnight (Part 1)](https://launchschool.com/exercises/864acdb4)
FileName: x02.rb
Answered On: 10/29/2020
Updated On: 02/26/2021
=end

=begin
The time of day can be represented as the number of minutes before or after 
midnight. If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the 
time of day in 24 hour format (hh:mm). Your method should work with any integer 
input.

You may not use ruby's Date and Time classes.
=end

def format_time(number)
  (0..9).include?(number) ? "0#{number}" : "#{number}"
end

def time_of_day(number)
  minutes = number % 60
  hours = (number / 60) % 24
  
  minutes_formatted = format_time(minutes)
  hours_formatted = format_time(hours)
  
  time = hours_formatted.concat(":",minutes_formatted)
end

# Additional Solution Added 02/26/2021
def time_of_day(int)
  num = int.divmod(1440)[1]
  h = num / 60
  m = num % 60 
  hh = h < 10 ? "0#{h}" : h
  mm = m < 10 ? "0#{m}" : m  
  "#{hh}:#{mm}"
end

# Additional Solution Added 03/25/2021
def time_of_day(num)
  hr, min = (num % 1440).divmod(60)
  hours = hr < 10 ? "0#{hr}" : hr
  minutes = min < 10 ? "0#{min}" : min
  "#{hours}:#{minutes}"
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"