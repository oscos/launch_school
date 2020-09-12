# https://launchschool.com/blog/live-session-beginning-ruby-part-5
# ex1

arr = ["green","yellow","black","white"]

def remove_vowels(arr)

  vowels = ["a","e","i","o","u"]

  arr.map do |word| 
    # p word
    str = word.chars
    # p str
    vowels.each {|vowel| p str.include?(vowel)}
    vowels.each {|vowel| str.delete(vowel)}
    # p str
    #str.join("")
  end
end
remove_vowels(arr)
