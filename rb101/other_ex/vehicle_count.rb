
# require 'pry'

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


# # Solution #1
# h1 = Hash.new(0)  
# arr_vehicles.each do |auto|
#   if h1.has_key?(auto)
#     h1[auto].push(auto)
#   else
#     h1[auto] = [auto]
#   end
# end
# # p h1
# h1.each do |k,v|
#   p "#{k} => #{v.size}"
# end


# Solution #2
h1 = Hash[arr_vehicles.group_by{|auto_group|auto_group}.map{|k,v|[k,v.size]}]
p h1

# #Solution #3
# h1 = Hash.new(0)
# arr_vehicles.each do |auto|
#   h1[auto] += 1
# end
# h1.each do  |k,v|
#   puts "#{k} : #{v}"
# end


# #Solution #4
# h1 = Hash.new(0)
# arr_vehicles.uniq do |auto_group|
#   h1[auto_group] = arr_vehicles.count(auto_group)
# end
# h1.each do  |k,v|
#   puts "#{k} : #{v}"
# end  
