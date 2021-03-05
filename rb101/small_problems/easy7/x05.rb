=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Staggered Caps (Part 1)](https://launchschool.com/exercises/77884ef5)
FileName: x05.rb
Answered On: 11/02/2020
=end

=begin
  Write a method that takes a String as an argument, and returns a new String 
  that contains the original value using a staggered capitalization scheme in 
  which every other character is capitalized, and the remaining characters are 
  lowercase. Characters that are not letters should not be changed, but count 
  as characters when switching between upper and lowercase.
=end

def staggered_case(str)
  new_str = str.downcase
  new_str.chars.each_with_index do |el, idx| 
      new_str[idx] = el.upcase if idx.even?
  end
  new_str
end

# Additional Solution Added 03/04/2021
def staggered_case(str) 
  str.chars.map.with_index do |el, idx|
    idx.even? ? el.upcase : el.downcase
  end.join
end

# Additional Solution Added 03/04/2021
def staggered_case(str) 
def staggered_case(str) 
  odd, even = 
    str.chars.partition.with_index do |el, idx|
      idx.even? 
    end
  odd.map(&:upcase).zip(even.map(&:downcase)).join.delete_suffix(" ") 
end

p staggered_case('I Love Launch School!')

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
