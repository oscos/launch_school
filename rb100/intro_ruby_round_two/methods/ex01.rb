# Launch School - Intro to Ruby
# Methods - ex01.rb
# Answered On 07/19/2020

def greeting(morning_or_noon, name, time)
  puts "#{morning_or_noon} #{name}, nice to meet ya.  Today is #{time}!"
end

morning_or_noon = (0..11).include?(Time.now.hour) ? 'Good Morning' : 'Good Afternoon'
time = Time.now.strftime("%A, %B %d %Y, %I:%M %p")

puts "Whats your name"
input = gets.chomp.capitalize

greeting(morning_or_noon, input, time)