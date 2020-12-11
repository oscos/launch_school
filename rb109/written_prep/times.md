```ruby
1  a = 'Bob'
2  
3  5.times do |x|
4  a = 'Bill'
5  end
6  
7  p a
```

This code outputs and returns the String `"Bill"`. This code demonstrates variables as pointers to address space in computer memory.

On `line 1` the local variable `a` is initialized to the String `'Bob'`

On `line 3 through 5` the `times` method is called on Integer `5`.  Each integer value from `0` to `4` is passed to the block in turn and assigned to the local variable `x`. Within the block `a` is reassigned to the String `'Bill'` on `line 4`.  When this code runs, Ruby will iterate through the block `5` times executing the code contained within each time.  Since the `times` method returns back the object it was called on, Integer `5` is returned.

On `line 8`, the `p` inspect method is called with `a` passed in as an argument.  Since `a` now points to the String `"Bill"`, this is output as well as the return value.
