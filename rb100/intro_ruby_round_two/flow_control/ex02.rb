# Launch School - Intro to Ruby
# Flow Control - ex02.rb
# Answered On 07/20/2020

# Resources: https://www.rubyguides.com/2015/03/ruby-random/


def generate_code(number)
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) { charset.sample }.join
end 

def name_upcase(name)
  name.length > 10 ? name.upcase : name
end 

random_number = rand(1..20)
your_name = generate_code(random_number)

puts("Your name before upcase check: #{your_name}")
puts('Your name after upcase check: ' + name_upcase(your_name))
