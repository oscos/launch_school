=begin
Launch School: RB101-RB109 - Small Problems - Easy 6
ExerciseName: []()
FileName: x0.rb
Answered On: 11/01/2020
=end

=begin
  Write a method that takes a positive integer, n, as an argument, and displays a 
  right triangle whose sides each have n stars. The hypotenuse of the triangle 
  (the diagonal side in the images below) should have one end at the lower-left 
  of the triangle, and the other end at the upper-right.
  
  triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end


def triangle(num)
  star = 1
  space = num - 1
  
  loop do 
    break if star > num
     puts (" " * space) + ("*" * star)
    star += 1
    space -= 1
  end
end

triangle(5)
triangle(9)


