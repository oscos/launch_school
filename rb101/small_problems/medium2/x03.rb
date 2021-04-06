def letter_percentages(str)
  h = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |el|
    case
      when ("a".."z").to_a.include?(el) then h[:lowercase] += 1
      when ("A".."Z").to_a.include?(el) then h[:uppercase] += 1
      else h[:neither] += 1
    end
  end
      
  h.map{|k,v| [k, ((v.to_f / str.size) * 100).round(2)]}.to_h
end

p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }