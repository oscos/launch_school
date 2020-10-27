=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x02.rb
Answered On: 10/25/2020
=end

# require "pry"
# require "pp"

# How would you order this array of hashes based on the year of publication of 
# each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]


def sort_arr(book_arr)
  book_arr.sort_by do |hash|
    hash[:published].to_i
  end
end

p sort_arr(books)
