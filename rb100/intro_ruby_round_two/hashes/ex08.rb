# Launch School - Intro to Ruby
# hashes - ex08.rb
# Answered On 07/26/2020

# require 'pry'

puts("Challenge: ")
puts("  Given the following array, write a program that prints out")
puts("  groups of words that are anagrams.   Anagrams are words that have the")
puts("  same exact letters in them but in a different order.")
puts ""
puts ("  Your output should look something like this:")
puts("    [\"demo\", \"dome\", \"mode\"]")
puts("    [\"neon\", \"none\"]")


# h1 = 
# {
#   "demo"=>["demo", "dome", "mode"], 
#   "enno"=>["none", "neon"], 
#   "deit"=>["tied", "diet", "edit", 
#   "tide"], "eilv"=>["evil", "live", "veil", "vile"], 
#   "flow"=>["fowl", "wolf", "flow"]
# }

# p h1.has_key?("otps")
# puts ""

# h1["otps"] = ["pots"]
# p h1

# puts ""
# h1["otps"].push("stop")
# p h1

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
result = {}

words.each do |word|
  key = word.split("").sort.join
  # p key
  if result.has_key?(key)  # example: result.has_key?("eilv")
    result[key].push(word) # example: result["eilv"].push("evil")
  else
    result[key] = [word] # example : result["eilv"] = ["live"] 
  end
end

# p result
puts ""
puts "Solution: "
result.each_value {|v| p v}