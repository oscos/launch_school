# ex01.md
# Your Age in Months

# Write a program that asks the user for their age in years, and then converts 
# that age to months.

def calculate_months(years_old)
  total_months = years_old * 12
  puts "You are #{total_months} months old"
end

puts "What's your age in years"
variable_a = gets.chomp.to_i

calculate_months(variable_a)

