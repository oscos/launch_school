# Launch School - Intro to Ruby
# loops - ex01.rb
# Answered On 07/24/2020

 # Given a hash of family members, with keys as the title and an array of names as
 # the values, use Ruby's built-in select method to gather only immediate family 
 # members' names into a new array.
 
 family = 
 {  
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
}

siblings = family.select {|k,v| k == :sisters || k == :brothers}

# p siblings.values

p siblings.values.flatten