=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [ddaaiillyy ddoouubbllee](https://launchschool.com/exercises/690b2900)
FileName: x09.rb
Answered On: 10/30/2020
=end

=begin
Write a method that takes a string argument and returns a new string that contains 
the value of the original string with all consecutive duplicate characters 
collapsed into a single character. You may not use String#squeeze or String#squeeze!.
=end

def crunch(str)
  arr = str.chars
  new_arr = []
  
  arr.each_with_index do |chr, idx|
    if new_arr.empty?
      new_arr << chr
    elsif arr[idx] != arr[idx - 1]
      new_arr << chr
    end
  end
  new_arr.join
end


# crunch('ddaaiillyy ddoouubbllee')
# crunch('4444abcabccba')
# crunch('ggggggggggggggg')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
