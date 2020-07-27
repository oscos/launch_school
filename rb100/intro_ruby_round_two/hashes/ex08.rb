# Launch School - Intro to Ruby
# hashes - ex08.rb
# Answered On 07/26/2020

# require 'pry'

# puts("Challenge: Given the following array, write a program that prints out")
# puts("groups of words that are anagrams.   Anagrams are words that have the")
# puts("same exact letters in them but in a different order.")

# puts ("Your output should look something like this:")

# puts("  [\"demo\", \"dome\", \"mode\"]")
# puts("  [\"neon\", \"none\"]")
# "deit"=>["tied", "diet", "edit", "tide"], 
# "eilv"=>["evil", "live", "veil", "vile"], 
# "flow"=>["fowl", "wolf", "flow"]



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

p result
puts ""
result.each_value do |v| 
  puts("-----")
  p v
end