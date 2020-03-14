# Launch School Book: Introduction To Programming With Ruby
# exercises_13.rb 
# Answered On: 03/12/2020

# INSTRUCTIONS:
# Use Ruby's Array method delete_if and String method start_with to delete ? 
# all of the words that begin with an "s" in the following array.
# Then recreate the arr and get rid of all of the words that 
# start with "s" or starts with "w".

puts "Use Ruby's Array method delete_if and String method start_with?"
puts "to delete all of the words that begin with an \"s\" in the"
puts "following array:"
puts ""

puts "before delete_if:"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
puts "------"

arr.delete_if do |v|
   v.start_with?('s')
end 
puts "after delete_if:"
p arr
puts "------"


puts "Then recreate the arr and get rid of all of the words that "
puts "start with \"s\" or starts with \"w\"."
puts ""
#re-add deleted words
arr.push('snow', 'slippery', 'salted roads')
puts "array recreated"
p arr
puts "------"

arr.delete_if do |v|
   v.start_with?('s','w')
end 
puts "after delete_if:"
p arr



