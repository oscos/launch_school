=begin
Launch School: RB101-RB109 - Small Problems - Easy 2
ExerciseName: [Even Numbers](https://launchschool.com/exercises/e3801a1a)
FileName: ex07.rb
Answered On: 10/15/2020
=end

=begin

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on 
separate lines.

=end

# Solution #1
# 100.times {|index| puts index if index.even? }

# solution #2
# (0..99).select {|num| puts num if num.even? }

# solution #3
0.upto(99) {|num| puts num if num.even?}