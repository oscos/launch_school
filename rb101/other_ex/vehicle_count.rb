
require 'pry'

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
result = {}
vehicles.each do |vehicle|
  key = vehicle
  if result.has_key?(key)
      binding.pry
    result[key].push(vehicle)
  else
    result[key] = [vehicle]
  end
end
# p result

result.each do  |k,v|
  puts "#{k} : #{v.count}"
end 




# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]
# result = Hash.new(0)
# vehicles.each do |vehicle|
#   result[vehicle] += 1
#   binding.pry
# end  
# result.each do  |k,v|
#   puts "#{k} : #{v}"
# end