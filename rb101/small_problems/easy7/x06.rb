=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Staggered Caps (Part 2)](https://launchschool.com/exercises/6eb02aae)
FileName: x06.rb
Answered On: 11/03/2020
=end

=begin
  Modify the method from the previous exercise so it ignores non-alphabetic 
  characters when determining whether it should uppercase or lowercase each 
  letter. The non-alphabetic characters should still be included in the return 
  value; they just don't count when toggling the desired case.
=end

# # using loop
# def staggered_case(str)
#   new_str = str.downcase
#   counter_letter = 0
#   counter = 0

#   loop do 
#   break if counter == new_str.size
#     if new_str[counter] =~ /[a-z]/ 
#       if counter_letter.even?
#         new_str[counter] = new_str[counter].upcase
#       end
#       counter_letter += 1
#     end
#   counter += 1
#   end
  
#   new_str
# end

# using each_with_index
def staggered_case(str)
  counter_letter = 0
  new_str = str.downcase

  new_str.chars.each_with_index do |el, idx|
    if el =~ /[a-z]/
      if counter_letter.even? 
        new_str[idx] = el.upcase
      end
      counter_letter += 1
    end
  end

  new_str
end

p staggered_case('I Love Launch School!')

# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

