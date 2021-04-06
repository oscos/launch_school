=begin
# PEDAC

## Process the Problem
    
### Understand the Problem
1. Expected input : single integer
2. Expected output : 
    - return integer - next featured number > than int param
    - Am I returning something or simply printing something
3. Make Requirements/Rules Explicit
    - explicit :
      - featured number =
        - ODD Number
        - Multiple of 7
        - digits occur exactly once each (133 has the number 3 twice within)
      - return the next featured number
      
4. Clarifying Questions
    - What are the extremes, limits on both ends
    - What to do about nil, or null, or empty value, or "", or 0, or [], or {}
    - repition and/or duplication
    - unexpected data types
5. If failure / bad input found what do to
    - raise exceptions / report errors


6. Mental model of the problem (optional)
    create method that returns a single featured number which represents:
      - odd
      - divisible by 7
      - each digit appears once in number
      - return error if there is no next featured number
      
### Examples/Test Case 
7. Validate understanding of the problem
    12 + 1 = 13
    12 + 2 = 14
    12 + 3 = 15
    12 + 8 = 21 - divisible by 7 = Y, odd? = Y, unique digits = Y
    
### Data Structure 
8. How we represent data that we will work with when converting the input to output.

### Algorithm 
9. Steps for converting input to output
  + create method with one int param
  - create range from int param upto (n) checking each number for
    odd?
    divisible by 7
    digits are uniq
    return error if none found ( time out error?) 

### Code with Intent 
10. Code Implementation of Algorithm
=end

def featured(int)
  (int+1).upto(9876543210) do |counter|
   return counter if counter.odd? && counter % 7 == 0 && counter.digits.size == counter.digits.uniq.size
  end
  return "ERROR - There is no possible number that fulfills those requirements." 
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements