# ex10.rb
# Cool Numbers
# Answered On: 06/28/2020 

# In the code below, number is randomly assigned a number between 0 and 9. 
# Then, an if statement is used to print "5 is a cool number!" or "Other 
# numbers are cool too!" based on the value of number.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else  puts 'Stop!'
end