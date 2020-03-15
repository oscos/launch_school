---
Launch School Book: Ruby Basics - Exercises
FileName: exercise_05.md 
Answered On: 03/15/2020
---

# Large Numbers

Using the ruby documentation, determine how you can write large numbers in 
a way that makes them easier to read.

Answer: 

Per the Ruby documentation for [Numbers](https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html#label-Numbers)
which is found under [Literals](https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html#label-Literals)

>The underscore may be used to enhance readability for humans. 
>You may place an underscore anywhere in the number

What this means:

1. You can use an underscore instead of comma to seperate a large number.

Since Ruby will convert commas wiithin a number 9,876,543 to array items: [9, 876, 543], 
instead you would write this number out as follow:

```
9_876_543

```

In addition to the underscore there is additonal syntax within the 
[Numbers](https://ruby-doc.org/core-2.5.1/doc/syntax/literals_rdoc.html#label-Numbers) 
section which you can use for better number readability.