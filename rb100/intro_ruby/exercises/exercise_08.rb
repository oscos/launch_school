# Launch School Book: Introduction To Programming With Ruby
# additional_exercises_08.rb 
# Answered On: 03/10/2020

# INSTRUCTIONS:
# Create a Hash, with one key-value pair, using both Ruby syntax styles.

puts "Create a Hash, with one key-value pair, "
puts "using both Ruby syntax styles."
puts ""

hash_01 = {
    :gender => "female"
}

hash_02 = {
    gender: "male"
}

hash_01.each do |k,v|
    puts "#{k} #{v}"
end 

hash_02.each do |k,v|
    puts "#{k} #{v}"
end 


