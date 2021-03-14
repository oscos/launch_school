=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Word to Digit](https://launchschool.com/exercises/753d4461)
FileName: x07.rb
Answered On: 11/07/2020
=end

=begin
  Write a method that takes a sentence string as input, and returns the same 
  string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 
  'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
=end

=begin


# # works
# NUMBERS = {
#   'zero'  => '0',
#   'one'   => '1',
#   'two'   => '2',
#   'three' => '3',
#   'four'  => '4',
#   'five'  => '5',
#   'six'   => '6',
#   'seven' => '7',
#   'eight' => '8',
#   'nine'  => '9'
# }

# NUMBERS = {
#   'zero':   '0',
#   'one':    '1',
#   'two':    '2',
#   'three':  '3',
#   'four':   '4',
#   'five':   '5',
#   'six':    '6',
#   'seven':  '7',
#   'eight':  '8',
#   'nine':   '9'
# }


puts("hello world!")
# p NUMBERS[:'five']
def word_to_digit(str)
  str.split.map do |el|  # calling split creates a new string and fails rules.

    # these work with old and new hash syntax {a: 1}
    # p NUMBERS[el.to_sym] 
    # p NUMBERS[:nine]
    # p NUMBERS[:"#{el}"]
      
    # these work with the old hash syntax. {'a' => 1}
    # p NUMBERS["#{:el}"] # does not work with new hash syntax
    # p NUMBERS[el] # why does this only work with older syntax in hash? ,
    # p el
  end
  # p NUMBERS
end

#=end

# def word_to_digit(str)
#   str.gsub!("one","1")
#   str.gsub!("two","2")
#   str.gsub!("three","3") 
#   str.gsub!("four","4") 
#   str.gsub!("five","5") 
#   str.gsub!("six","6") 
#   str.gsub!("seven","7")   
#   str.gsub!("eight","8")   
#   str.gsub!("nine","9")   
#   str
# end

# # code above refactored
# NUMBERS = {
#   'zero'  => '0',
#   'one'   => '1',
#   'two'   => '2',
#   'three' => '3',
#   'four'  => '4',
#   'five'  => '5',
#   'six'   => '6',
#   'seven' => '7',
#   'eight' => '8',
#   'nine'  => '9'
# }

# def word_to_digit(str)
#   NUMBERS.each { |k,v| str.gsub!(k.to_s, v) }
#   str
# end

# using loop
# def word_to_digit(str)
#   counter = 0
#   loop do 
#     break if counter > 9
#       txt = NUMBERS.keys[counter]
#       num = NUMBERS.values[counter]
#       str.gsub!(txt,num)
#     counter += 1
#   end
#   str
# end 
=end 

NUMBERS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9'
}

# liked Tolga Akin / Will Fowls solutions
def word_to_digit(str)
  NUMBERS.each do |k,v|
    str.gsub!(k,v)
  end
  str
end

p word_to_digit('Please call me at eight freight five five five one two three four. Thanks.') # == 'Please call me at 5 5 5 1 2 3 4. Thanks.'