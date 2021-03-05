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


# Additional Solutions all added below on 03/02/2021
def swapcase(str)
  str.chars.map do |el|
    if el == el.upcase
      el.downcase
    elsif el == el.downcase
      el.upcase
    else
      el
    end
  end.join
end

# Additional Solutions all added below on 03/02/2021
def swapcase(str)
  uppercase = ("A".."Z").to_a
  lowercase = ("a".."z").to_a
  letters = uppercase + lowercase
  
  str.chars.map do |el|
    if !letters.include?(el)
      el
    elsif uppercase.include?(el)
      el.downcase
    else
      el.upcase
    end
  end.join
end

# Additional Solutions all added below on 03/02/2021
def swapcase(str)
  str.chars.map do |el|
    if el =~ /[a-z]/
      el.upcase
    elsif el =~ /[A-Z]/
      el.downcase
    else
      el
    end
  end.join
end

# Antonio Serna Solution 
# this works because you can apply upcase or downcase to non-alpha chars.
def swapcase(string)
  string.chars.map { |c| c.upcase == c ? c.downcase : c.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'