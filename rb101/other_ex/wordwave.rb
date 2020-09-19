def wave(str)
  
  arr_words_diff_object_id = []
  
  str_size = str.size
  
  str_size.times {|i| arr_words_diff_object_id << str.dup}  ## use dup for diff obj_id

  # arr_words_diff_object_id.each do |word| 
  #   word
  #   word.object_id
  # end
  
  arr_caps = str.upcase.chars
  
  counter = 0
  
  arr_map = arr_words_diff_object_id.map do |word|
    # p word
    
    # if word[counter] != ' '  #need to get this working.
      word[counter] = arr_caps[counter] 
      counter += 1
      word # this needs to be the last line to feed arr_map variable the transformed return value
  end

  arr_map
  
end

p wave(" gap ")
#p wave("two words")
# wave("hello")
# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]



# # SOLUTION #2
# def wave(str)
#     str_size = str.size

#     wave_of_words = []

#     arr_caps = str.upcase.chars

#     counter = 0

#     while counter < str_size
#         arr = str.chars 
        
#       if arr[counter] != ' '
#         arr[counter] = arr_caps[counter]
#         arr2 = arr.join
#         wave_of_words << arr2
#         counter += 1
#       else
#         counter +=1
#       end
#     end

#     # BRUTE FORCE METHOD TO SEE WHAT PART OF THE CODE REPLICATES
#     # arr = str.chars
#     # arr[0] = arr_caps[0]
#     # arr2 = arr.join
#     # wave_of_words << arr2
#     # p arr2
    
#     # arr = str.chars
#     # arr[1] = arr_caps[1]
#     # arr2 = arr.join
#     # wave_of_words << arr2
#     # p arr2   
    
#     # arr = str.chars
#     # arr[2] = arr_caps[2]
#     # arr2 = arr.join
#     # wave_of_words << arr2    
#     # p arr2       
    
#     # arr = str.chars
#     # arr[3] = arr_caps[3]
#     # arr2 = arr.join
#     # wave_of_words << arr2    
#     # p arr2
    
#     # arr = str.chars
#     # arr[4] = arr_caps[4]
#     # arr2 = arr.join
#     # wave_of_words << arr2
#     # p arr2

#     wave_of_words
# end


# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

