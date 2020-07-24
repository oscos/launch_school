# Launch School - Intro to Ruby
# loops - ex02.rb
# Answered On 07/22/2020

# input = ''

# while input != "STOP" do
#     puts "Type something, type 'STOP' (in all caps) to stop "
#     input = gets.chomp
#     if input == "STOP"
#         puts "You're wish is my command, GOOD-BYE!"
#         break
#     end 
# end





input = ''
i = 0

while input != "STOP" do
    i += 1
    
    # puts "#{i} time - Type something, type 'STOP' (in all caps) to stop "
    # input = gets.chomp

    input = ['P','O','T','S']
    input = input.shuffle!
    input = input.join('')
    
    puts "#{i} time(s) - #{input} "    
    if input == "STOP"
        puts "You're wish is my command, GOOD-BYE!"
        break
    end 
end
