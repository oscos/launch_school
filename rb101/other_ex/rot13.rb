
# require 'pry'

def rot13(input_string)

  letters_array = [*'a'..'z', *'a'..'z', *'A'..'Z', *'A'..'Z']

  # p letters_array.index('Z')
  
  input_array = input_string.split(//)
  
  decoded_array = []
  
  input_array.each do |char|
    
      # break if char.nil?
      
      num = letters_array.index(char)
      if num == nil then
        decoded_array.push(char)
      else
        char = letters_array[num += 13]
        decoded_array.push(char)
      end
  end 
  return decoded_array.join
end


p rot13('hello')
# rot13('H3e l-1o0')
# # p rot13('Hello World!')
p rot13('Hello World!') == "Uryyb Jbeyq!"
p rot13('Miss2Ms') == "Zvff2Zf"
# p rot13(nil).nil?