=begin
Launch School: RB101 Programming Foundations - Lesson 5 - Advanced Ruby Collections
ExerciseName: [Sorting](https://launchschool.com/lessons/c53f2250/assignments/2831d0e1)
FileName: sorting.rb
Created On: 10/19/2020
=end


Line | Action | Object | Side Effect | Return Value | Is Return Value Used?
---------|----------|---------|---------|---------|---------
 A1 | B1 | C1 | D1 | E1 | F1
 A2 | B2 | C2 | D2 | E2 | F2
 A3 | B3 | C3 | D3 | E3 | F3

Describe what is happening in the code below:
1 | [[1, 2], [3, 4]].each do |arr|
2 | puts arr.first
3 | end


Line 1: The Array#map method is called on the multi-dimensinal array [].
Line 1-3: Each inner array is passed to the do/end block in turn and assigned to the local variable arr.
Line 2: The Array#first method is called on arr and returns the object at index 0 of the current array, in this case integers 1 and 3 respectively.
Line 2: puts outputs the string representation of integers 1 and 3. Since this is the last statement of the block and because puts returns nil, the return value of the block is also nil.
Line 1: Since Array#map returns a new array of all the elements transformed, the return value of Array#map in this case returns back [nil, nil] as it does use each return value of the block.