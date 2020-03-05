# Iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weigth: '160 lbs', hair: "brown"}

person.each do
    |k,v|
    puts "#{k} is #{v}"
end