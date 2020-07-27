# Launch School - Intro to Ruby
# hashes - ex03.rb
# Answered On 07/24/2020

fruit =
{
  mango: "mango",
  plantano: "banana",
  pera: "pears",
  manazana: "apples"
}

# p fruit.keys
# p fruit.values

fruit.each_key {|k| puts "key is: #{k}"}
fruit.each_value {|v| puts "value is: #{v}"}
fruit.each {|k,v| puts "#{k}: #{v}"}