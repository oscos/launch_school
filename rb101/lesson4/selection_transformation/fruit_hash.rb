=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Samples
ExerciseName: [Lesson 4](https://launchschool.com/lessons/85376b6d/assignments/ced192be)
FileName: fruit_hash.rb
Answered On: 10/11/2020
=end

# require "pry"
# require "pp"

puts("Non-Mutating - returns new hash")
def select_fruit(produce)
  selected_collection = {}
  counter = 0
  
  loop do
    break if counter == produce.size
    
    selected_key = produce.keys # => ["apple", "carrot", "pear", "broccoli"]
    selected_value = produce[selected_key[counter]]
    selected_collection[selected_key[counter]] = selected_value if selected_value == 'Fruit'
    counter += 1
  end
  
  
  selected_collection
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# require 'pry'

# Mutating
puts("Mutating - returns same hash")
def select_fruit!(produce2)
  # selected_collection = {}
  counter = 0
  
  loop do
    break if counter == produce2.size
    
    produce_keys_arr = produce2.keys  # ["apple", "carrot", "pear", "broccoli"]
  
    if produce2[produce_keys_arr[counter]] == "Vegetable" then
      produce2.delete(produce_keys_arr[counter])
      # binding.pry
      counter -= 1
    end
    # binding.pry
    counter += 1
  end
  
  produce2
end

produce2 = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
p select_fruit!(produce2) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# produce_keys_arr = produce2.keys  # ["apple", "carrot", "pear", "broccoli"]

# ##### return value based on key from hash
# # p produce2[produce_keys_arr[1]] # "Vegetable"
# # p produce2[produce_keys_arr[2]] # "Vegetable"

# # ##### deleting pairs from hashes
# # # p produce2.delete('carrot')
# # # p produce2.delete('broccoli')

# # p produce2.delete(produce_keys_arr[1])
# # p produce2.delete(produce_keys_arr[3])

# # p produce2 
# # ######

## filter for vegetable and delet if true

# if produce2[produce_keys_arr[1]] = "Vegetable" then
#   produce2.delete(produce_keys_arr[1])
# end

# if produce2[produce_keys_arr[3]] = "Vegetable" then
#   produce2.delete(produce_keys_arr[3])
# end

# p produce2 







