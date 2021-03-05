=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: []()
FileName: x0.rb
Answered On: 10/30/2020
=end

=begin
  Write a method that takes an array of strings, and returns an array of the same 
  string values, except with the vowels (a, e, i, o, u) removed.
=end

def remove_vowels(arr)
  arr.map { |str| str.gsub(/[aeiou]/i,"") }
end

def remove_vowels(arr)
  arr.map { |str| str.delete("aeiouAEIOU") }
end

# Additional Solution adapted from Antonio Serna solution
def remove_vowels(arr)
  arr.map do |el|
    el.split(/[aeiou]/i).join # (/[^aeiou]/i,'')
  end
end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
# p remove_vowels(%w(green YELLOW black white))

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']