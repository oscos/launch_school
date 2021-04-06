def balanced?(str)
  ones =
  str.chars.map do |el|
     el == "(" ? 1 : -1 if ['(',')'].include?(el)
  end.compact
  
  total = 0

  ones.each do |el|
    total += el
    break if total == -1
  end
  
  return false if total != 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false