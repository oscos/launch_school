# https://launchschool.com/blog/live-session-beginning-ruby-part-5
# ex2

def balancer(str)
  # open_parenthesis = str.count("(")
  # closed_parenthesis = str.count(")")
  # result = open_parenthesis - closed_parenthesis == 0 ? true : false
  
  return false unless str.count("(") == str.count(")")
  
  arr_letters = str.chars
  
  counter = 0
  counter_flag = true

  arr_letters.each do |letter| 
    counter -= 1 if letter == ")" 
    counter += 1 if letter == "(" 
    # p letter
    # p counter
    if counter < 0
      counter_flag = false
      break
    end 
    # return false if counter < 0
  end
  
  counter_flag
  # true
  
end

p balancer("hi")
p balancer("(hi") 
p balancer("(hi)")
p balancer(")hi(")
p balancer("(()) )(")