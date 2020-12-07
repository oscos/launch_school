Launch School Course > RB101 Programming Foundations > Lesson 2 > Small Programs > 19. [More Variable Scope](https://launchschool.com/lessons/a0f3cd44/assignments/9e9e907c)


FileName: more_variable_scope.rb<br>
Created On: 12/02/2020

### What is method definition?
* A method that we defined using the keyword `def` within our code.

### What is method invocation?
* When we call / invoke a method.

### What is the relationship between method invocation and a block?
* A method invocation followed by curly braces or do/end is how we define a block in ruby.
* A block is part of the method invocation.
* The block acts as an argument to the method during method invocation.
* Whether or not a block can interact with the method during method invoication depends on how a method is defined.
* When invoking a method with a block the interaction is not just limited to code execution within the block, as the method can use with the return value of the block as well.

### Compare method definition vs method invocation with a block as it pertains to how they access or reassign local variables.
* Method definitions can not directly access nor reassign local variables initilized outside the method definition. A block on the other hand can do both, access and reassign local variables initilized outside the block.
* We can think of method definitions as setting the scope for local variables through it's parameters, while method invocation with a block makes use that scope. 
* if the method is defined to use a block, the scope of the block can provide additonal flexibility to the method inocation.



