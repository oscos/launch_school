=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [Tip Calculator](https://launchschool.com/exercises/90d719d7)
FileName: ex03.rb
Answered On: 10/15/2020
=end

=begin
Create a simple tip calculator. The program should prompt for a bill amount and 
a tip rate. The program must compute the tip and then display both the tip and 
the total amount of the bill.

Example: 
    What is the bill? 200
    What is the tip percentage? 15
    
    The tip is $30.0
    The total is $230.0
=end


puts("What is the bill?")
bill_amt = gets.chomp.to_f

puts("What is the tip percentage?")
tip_percent = gets.chomp.to_f

# p (tip_percent.to_i / 100.00)

tip_amt = bill_amt * (tip_percent / 100.00)
total_amt = bill_amt + tip_amt
# total_amt = format("%.2f", total_amt) 

puts("The tip is #{format("%.2f",tip_amt)}.")
puts("The total is #{format("%.2f",total_amt)}.")