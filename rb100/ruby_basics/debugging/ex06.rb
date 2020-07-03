# ex06.rb
# Confucius Says
# Answered On: 07/03/2020


# You want to have a small script delivering motivational quotes, but with
# the following code you run into a very common error message: no implicit 
# conversion of nil into String (TypeError). What is the problem and how 
# can you fix it?

def get_quote(person)
    # if person == 'Yoda'
    #   'Do. Or do not. There is no try.'
    # end
  
    # if person == 'Confucius'
    #     'I hear and I forget. I see and I remember. I do and I understand.'
    # end   
  
    # if person == 'Einstein'
    #   'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    # end

    # Solution 1
    if person == 'Yoda'
      return 'Do. Or do not. There is no try.'
    end
  
    if person == 'Confucius'
      return 'I hear and I forget. I see and I remember. I do and I understand.'
    end   
  
    if person == 'Einstein'
      return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    end  

    # Solution 2
    # if person == 'Yoda'
    #     'Do. Or do not. There is no try.'
    # elsif person == 'Confucius'
    #       'I hear and I forget. I see and I remember. I do and I understand.'
    # else person == 'Einstein'
    #     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    # end   

end
  
puts 'Confucius says:'
puts '"' + get_quote('Yoda') + '"'
puts '"' + get_quote('Confucius') + '"'
puts '"' + get_quote('Einstein') + '"'