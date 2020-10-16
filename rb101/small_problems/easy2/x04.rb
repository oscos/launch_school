=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [When will I Retire?](https://launchschool.com/exercises/d28a76d4)
FileName: ex04.rb
Answered On: 10/15/2020
=end

=begin
Build a program that displays when the user will retire and how many years she 
has to work till retirement.

Example: 
    What is your age? 30
    At what age would you like to retire? 70
    
    It's 2016. You will retire in 2056.
    You have only 40 years of work to go!
=end

puts("What is your age?")
current_age = gets.chomp.to_i

puts("At what age would you like to retire?")
retirement_age = gets.chomp.to_i

current_year = Time.now.year
remaining_work_years = retirement_age - current_age
retirement_year = current_year + remaining_work_years
# total_amt = format("%.2f", total_amt) 

puts("It's #{current_year}. You will retire in #{retirement_year}.")
puts("You have only #{remaining_work_years} years of work to go.")

