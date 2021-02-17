```ruby
1  a = 'Bob'
2  
3  5.times do |x|
4  a = 'Bill'
5  end
6  
7  p a
```

!IMPORTANT - make sure to state in my template that `a = 'Bill'` gets reassigned 5 times.

!important - create template for FOR

### Attempt #2
The local variable `a` was initialized to the String `Bob` on `line 1`, and reassigned to the String `'Bill'` on `line 4`. When `a` is passed as argument to the method invocation `p` on `line 7`, it's output and return value is the String `'Bill'`. 

Since a Ruby block's inner scope can access outer scope variables, a variable that's reassigned from within, will have that change affect the outer scope. This code exercise demonstrates both the concept of local variable scope, as well as variables as pointers. 

### Attempt #1
This code outputs and returns the String `"Bill"`. This code demonstrates the conept of variables as pointers to physical space in computer memory, as well as local variable scope. 

On `line 1` the local variable `a` is initialized to the String `'Bob'`

On `line 3 through 5` the `times` method invocation is called on Integer `5`.  Each integer value from `0` to `4` is passed to the block in turn and assigned to the local variable `x`. Within the block `a` is reassigned to the String `'Bill'` on `line 4`.  When this code runs, Ruby will iterate through the block `5` times executing the code contained within each time.  Since the `times` method invocation with a block returns back the object it was called on, Integer `5` is returned.

On `line 7`, the `p` method invocation is called with `a` passed in as an argument.  Since `a` now points to the String `"Bill"`, this is output as well as the return value.