# Launch School - Intro to Ruby
# hashes - ex05.rb
# Answered On 07/25/2020

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.fetch(:hobbies, "Eye Color is not on the person hash")
puts person.select {|k,v| v=="painting"}

if person.has_value?("painting")
    puts "Value exists in hash" 
else 
    puts "Value does not exits in hash"
end
