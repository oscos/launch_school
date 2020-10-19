=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Exclusive Or](https://launchschool.com/exercises/b02d7e27)
FileName: x06.rb
Answered On: 10/18/2020
=end

def xor?(boolean1, boolean2)
  case 
  when boolean1 == true && boolean2 == false then true
  when boolean1 == false && boolean2 == true then true 
  else false
  end
  
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false