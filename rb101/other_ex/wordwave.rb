# #refactored
# def wave(str)
#   arr1 = [str] * str.size
#   arr1.each_with_object([]) { |word, array| array << word.dup }
#   .each_with_index { |word,index| word[index] = word[index].upcase }
#   .reject {|word| word == str}
# end 

def wave(str)
  substring_array = []
  arr1 = [str] * str.size
  arr1.each do |word|
    substring_array << word.dup
  end 
  substring_array.each_with_index do |word,index|
    word[index] = word[index].upcase
  end
  substring_array.delete(str)
  substring_array
end 
  
  
# David Ecklund's solution     
def wave(string)
  result = []
  0.upto(string.size-1) do |up|
    arr = string.chars
    next if arr[up] == " "
    arr[up] = arr[up].upcase
    result << arr.join
  end
  result
  
end
       
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]