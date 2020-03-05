What will the following programs return? What is value of arr after each?

### Q1.
```
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
```

`arr.product(Array(1..3))` will return a two-dimensional array with each element in `arr` combined with each integer in `Array(1..3)`. `arr` has been re-assigned to the 2D array.
```
irb(main):002:0> arr = arr.product(Array(1..3))
=> [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
```

`arr.first` returns the first element of an array, in this case it's the sub-array `["b", 1]`.

The `delete` method will delete all items from self that are equal to obj. Here the `delete` method has been passed the arguments `arr.first.last`, which evaluates to the last item in the first sub-array i.e. the integer `1`. 

As the `delete`is destructive, `arr` will be modified.

Therefore, the returned value will be `1` and the value of `arr` will be `[["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]`.


### Q2.
```
2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
```

Difference between this programme and the first is in line two, this time the command is `arr = arr.product([Array(1..3)])`. This creates an array containing `[1, 2, 3]`, which is combined with both `"b"` and `"a"`
```
arr = arr.product([Array(1..3)])
=> [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
```
This means `arr.first` will return `["b", [1, 2, 3]]`. 

Therefore `arr.first.delete(arr.first.last)` will return `[1, 2, 3]` and the value of `arr` will be `[["b"], ["a", [1, 2, 3]]]`.