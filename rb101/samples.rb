

# PRODUCTS = [
#   { name: "Thinkpad x210", price: 220 },
#   { name: "Thinkpad x220", price: 250 },
#   { name: "Thinkpad x250", price: 979 },
#   { name: "Thinkpad x230", price: 300 },
#   { name: "Thinkpad x230", price: 330 },
#   { name: "Thinkpad x230", price: 350 },  
#   { name: "Thinkpad x240", price: 700 },
#   { name: "Macbook Leopard", price: 300 }, 
#   { name: "Macbook Air", price: 700 },
#   { name: "Macbook Pro", price: 600 }, 
#   { name: "Macbook", price: 1449 },
#   { name: "Dell Latitude", price: 200 },
#   { name: "Dell Latitude", price: 650 },
#   { name: "Dell Inspiron", price: 300 },  
#   { name: "Dell Inspiron", price: 450 }
# ]

# # varx =
# # PRODUCTS.select { |hash|
# #   hash[:name] == "Thinkpad x220" && hash[:price].between?(240,260)
# # }
# # p varx


# query = {
#   price_min: 240,
#   price_max: 280,
#   q: "thinkpad"
# }

# query2 = {
#   price_min: 300,
#   price_max: 450,
#   q: "dell"
# }

# def search(query)
#   # PRODUCTS.select do |hash|
#   #   hash[:name].downcase.include?("thinkpad") && hash[:price].between?(240,260)
#   # end
  
#   PRODUCTS.select do |hash|
#     (hash[:name]).downcase.include?(query[:q]) && hash[:price].between?(query[:price_min],query[:price_max])
#   end  
  
# end

# p search(query)
# # [ { name: "Thinkpad x220", price: 250} ]

# p search(query2)
# # [ 
#     # { name: "Dell Inspiron", price: 300}, 
#     # { name: "Dell Inspiron", price: 450}, 
# # ]



# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# new_array = arr.select do |n| 
#   n + 1 # 2 is a truthy value because anything in Ruby other than FALSE or NIL is truthy
# end

# p new_array

=begin

- On `line 3` local variable `arr` is initialized and assigned to an `Array` object with integer values from `1` to `10`.
  
- On `line 5` local variable `new_array` is initialized and assigned the return value of calling 'select' on the Local variable `arr`. 'Select' is passed the `do...end` block as an argument with block parameter 'n'. 

On `line 6`, the `+` method is called on local variable `n` and passed integer `1` as an argument. As `select` iterates over the array, it passes each element to the block parameter `n`. The code on `line 6` will increment `n` by `1`. 
  
On line 9, the print method is called and passed the new_array variable as an argument.  It will return an array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

This problem demonstrates the concept of truthiness and that select will return a new array of elements based on the truthiness of the block's return value. 

=end

arr = [1, 2, 0, 4, 3, 0, 5, 0]

number_of_zeroes = arr.count(0)

arr.delete(0)

number_of_zeroes.times do
  arr << 0
end

p arr


arr = [1, 2, 0, 4, 3, 0, 5, 0]
arr2 = arr.select {|num| num if num == 0}
arr.delete_if {|num| num if num == 0}
arr.push << arr2
arr.flatten!
p arr


arr = [1, 2, 0, 4, 3, 0, 5, 0]
arr1 = []
arr1 = arr.select {|num| arr1 << num if num != 0}
arr1 <<  arr.select {|num| num if num == 0}
p arr1.flatten!