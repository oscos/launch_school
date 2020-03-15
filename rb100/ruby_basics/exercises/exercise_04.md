---
# Launch School Book: Ruby Basics - Exercises
# exercise_04.md 
# Answered On: 03/14/2020
# Modified On: 03/15/2020

# INSTRUCTIONS:
# 
---

# Return Value of break

In the previous exercise, you learned that the while loop returns nil unless 
break is used. Locate the documentation for break, and determine what value 
break sets the return value to for the while loop.

Per the Ruby documentation for [break](https://ruby-doc.org/core-2.7.0/doc/syntax/control_expressions_rdoc.html#label-break+Statement):

> break accepts a value that supplies the result of the expression it is "breaking" out of:

What this means is the following:

1. If break is assigned a value other than nil, it returns the assigned value

2. If break is not assigned a value, it returns nil.

Here is a simple code example from the answers and discussion section in the 
exercises which illustrates the return value of the while loop when break 
is not assigned a value.

```
result = while true
  break
end
p result
```


