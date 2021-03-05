=begin
Launch School: RB101-RB109 - Small Problems - Easy 7
ExerciseName: [Capitalize Words](https://launchschool.com/exercises/1be5fbac)
FileName: x03.rb
Answered On: 11/02/2020
=end

=begin
  Write a method that takes a single String argument and returns a new string 
  that contains the original value of the argument with the first character of 
  every word capitalized and all other letters lowercase.
  
  You may assume that words are any sequence of non-blank characters.
=end

# same solution as one liner:
def word_cap(str)
  str.split.words.map { |word| word.capitalize}.join(' ')
end

# further exploration
def word_cap(str)
  str.split.map{|word| word[0].upcase + word[1..-1].downcase }.join(' ')
end

# further exploration
further exploration
def word_cap(str)
  words = str.downcase.split
  new_words = 
    words.map do |word|
      word[0] = word[0].upcase
      word
    end
  new_words.join(" ")
end  

# adaption from solution submitted by kiran k madan
def word_cap(str)
  new_words = 
    str.downcase.split.map do |word|
      word[0] = (word[0].ord - 32).chr if word[0].ord.between?(97,122)
      word
    end
  new_words.join(" ")
end 

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'