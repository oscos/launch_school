# ex02.rb
# Weather Forecast
# Answered On: 07/03/2020

# Our predict_weather method should output a message indicating whether a sunny 
# or cloudy day lies ahead. However, the output is the same every time the method 
# is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  # sunshine = ['true', 'false'].sample
  sunshine = [true, false].sample # fix applied, removed single qoutes

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather