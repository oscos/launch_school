# ex04.md

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == "yes"
  puts "enter the word 'yes' to stop loop."
end