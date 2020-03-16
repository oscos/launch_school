---
Launch School Book: Ruby Basics - Exercises
FileName: exercise_09.md 
Answered On: 03/15/2020
---

# Methods Without Arguments

How would you use String#upcase to create an uppercase version of 
the string "xyz"?

Answer: 

Ruby Documentation can be found at:  
[#upcase](https://ruby-doc.org/core-2.4.0/String.html#method-i-upcase)

```
"xyz".upcase
```

Note that the upcase method for String does not mutate the caller which
means a new string is returned, leaving the original string unchanged.