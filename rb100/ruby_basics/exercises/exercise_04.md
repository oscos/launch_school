---
# Launch School Book: Ruby Basics - Exercises
# exercise_03.rb 
# Answered On: 03/14/2020

# INSTRUCTIONS:
# 
---

# Return Value of break

In the previous exercise, you learned that the while loop returns nil unless 
break is used. Locate the documentation for break, and determine what value 
break sets the return value to for the while loop.

1. The return value for break in a while loop is nil, unless a different value is provided.

Example:

```
result = while true
  break
end
p result
```
