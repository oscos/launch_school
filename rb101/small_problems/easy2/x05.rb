=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [Greetin a user](https://launchschool.com/exercises/1af9d2f7)
FileName: ex05.rb
Answered On: 10/15/2020
=end

=begin
Write a program that will ask for user's name. The program will then greet the 
user. If the user writes "name!" then the computer yells back to the user.

Example: 
    What is your name? Bob
    Hello Bob.
    
    What is your name? Bob!
    HELLO BOB. WHY ARE WE SCREAMING?
=end

puts("What is your name?")
person_name = gets.chomp

if person_name[-1] == "!"
    person_name.chop # chop method removes the last character NOTE: chop vs chomp
    puts("HELLO #{person_name.upcase} WHY ARE WE SCREAMING?")
else
    puts("Hello #{person_name.capitalize}.")    
end