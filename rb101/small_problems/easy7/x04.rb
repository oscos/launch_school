=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Swap](https://launchschool.com/exercises/f149de8d)
FileName: x04.rb
Answered On: 11/02/2020
=end

=begin
  Write a method that takes a string as an argument and returns a new string in 
  which every uppercase letter is replaced by its lowercase version, and every 
  lowercase letter by its uppercase version. All other characters should be 
  unchanged.
  
  You may not use String#swapcase; write your own version of this method.
=end

def swapcase(str)
  new_str =
    str.chars.map do |element|
      if element =~ /[a-z]/
        element.upcase
      elsif element =~ /[A-Z]/
        element.downcase
      else
        element
      end
    end
  new_str.join
end

# p swapcase('CamelCase')
# p swapcase('Tonight on XYZ-TV')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'