# ex07.md
# Only Even
# Using next, modify the code below so that it only prints even numbers.

number = 0

# until number == 10
#   number += 1
#   if number.odd?
#     puts number.next
#   end
# end

number = 0

until number == 10
  number += 1
    next if number.odd?
    puts number
end