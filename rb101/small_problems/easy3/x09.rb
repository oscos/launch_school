=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Palindromic Strings (Part 2)](https://launchschool.com/exercises/8fca300b)
FileName: x09.rb
Answered On: 10/18/2020
Updated On: 02/18/2021
=end

=begin
Write another method that returns true if the string passed as an argument is a 
palindrome, false otherwise. This time, however, your method should be 
case-insensitive, and it should ignore all non-alphanumeric characters. If you 
wish, you may simplify things by calling the palindrome? method you wrote in the 
previous exercise.
=end

ALPHANUMERIC = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a

def palindrome?(string)
  # string == string.reverse ? true : false
  string == string.reverse # refactored.
end

def real_palindrome?(string)
  alphanum = ''
  counter = 0
  
  loop do 
    break if counter == string.size
      current_value = string[counter]
      alphanum << current_value if ALPHANUMERIC.include?(current_value)
    counter += 1
  end
  
  palindrome?(alphanum.downcase)
end

#Launch School solution using regex
# def real_palindrome?(string)
#   string = string.downcase.delete("^a-z0-9")
#   palindrome?(string)
# end

# Solution #2 Added 02/18/2021
def real_palindrome?(str)
  new_string = str.downcase.gsub(/[^a-z0-9]/i,'')
  palindrome?(new_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false