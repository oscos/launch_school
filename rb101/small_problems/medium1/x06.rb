=begin
Launch School: RB101-RB109 - Small Problems - Medium1
ExerciseName: [Stack Machine Interpretation](https://launchschool.com/exercises/0f677535)
FileName: x06.rb
Answered On: 11/12/2020
=end

=begin

Example:

Using MULT operation with stack values 3 6 4 and register 7
# first iteration
3 6 4 # 7 is current value of register
=> 3 6 (4 * 7)
=> 3 6 # 28 is current value of register

# second iteration
3 6 # 28 is current value of register
=> 3 (6 * 28)
=> 3 # 168 is current value of register

# third iteration
3 # 168 is current value of register
=>(3 * 168)
=> 54 # is current value of register with no values left in stack to transform.

def stack_register(stack, register)
  result = []
  
  stack.reverse.each do |el|
    result << register = register * el
  end
  result.reverse
end
p stack_register([3, 6, 4], 7)
=end

def minilang(str)
  register = 0
  stack = []

  str.split.each do |el|
    case 
      when el == 'ADD' then register += stack.pop
      when el == 'SUB' then register -= stack.pop
      when el == 'MULT' then register *= stack.pop
      when el == 'DIV' then register /= stack.pop        
      when el == 'MOD' then register %= stack.pop  
      when el == 'PUSH' then stack.push(register)
      when el == 'POP' then register = stack.pop  
      when el == 'PRINT' then puts register 
      else register = el.to_i
    end
  end
end 

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)