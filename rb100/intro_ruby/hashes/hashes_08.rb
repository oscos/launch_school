# Launch School Book: Introduction To Programming With Ruby
# hashes_08.rb 
# Answered On: 02/03/2020

# INSTRUCTIONS:
# Challenge: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


# iterate over array
# sort each word into alpha order
# if key exists, append current word into value (array)
# otherwise, create a new key with this sorted word

# p "mode".split('')
# puts "-----"
# p "mode".split('').sort
# puts "-----"
# p "mode".split('').sort.join

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
    #p result[key].push(word)
  else
    result[key] = [word]
    #p result[key] = [word]
  end 
end 

result.each do |v|
  puts "-------"
  p v
end