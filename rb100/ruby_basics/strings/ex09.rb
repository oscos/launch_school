# ex09.rb
# Pluralize
# Answered On: 07/01/2020

words = 'car human elephant airplane'

words.split(' ').each {
    |n|
    puts ("#{n}" + "s")
}