
BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M']
]

def block_word?(str)
  arr = str.upcase.chars
  BLOCKS.each do |subr|
    return false if (subr - arr) == []
    return true if  (arr -= subr) == []
  end
  false
end

p block_word?('BATCH') == true # --> true
p block_word?('BUTCH') == false # --> true
p block_word?('jest') == true # --> true
p block_word?('get') == false # --> true
p block_word?('virginia') == false # --> true
p block_word?('Dairy Queen') == false # --> true
p block_word?('DOT') == true # --> true