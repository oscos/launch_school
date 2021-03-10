=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Group Anagrams](https://launchschool.com/exercises/3e3f841c)
FileName: x11.rb
Answered On: 03/09/2021
=end

=begin
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
Write a program that prints out groups of words that are anagrams. Anagrams 
are words that have the same exact letters in them but in a different order. 
Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)
=end

# solution #1
def anagrams(arr)
  h = Hash.new(0)
  arr.each do |el|
    k = el.chars.sort.join
    if !h.has_key?(k)
      h[k] = [el]
    else
      h[k] << el
    end
  end
  h.values
end

# improved solution #2
def anagrams(arr)
  arr.group_by{|el| el.chars.sort.join}.values
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
  
p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], 
["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], 
["fowl", "wolf", "flow"], ["hello"]]
