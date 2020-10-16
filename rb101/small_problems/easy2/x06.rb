=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [Odd Numbers](https://launchschool.com/exercises/e7a26cab)
FileName: ex06.rb
Answered On: 10/15/2020
=end

=begin

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on 
separate lines.

=end

# Solution #1
# 100.times {|index| puts index if index.odd? }

# solution #2
# (1..99).select {|num| puts num if num.odd? }

# solution #3
1.upto(99) {|num| puts num if num.odd?}