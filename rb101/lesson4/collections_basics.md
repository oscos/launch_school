=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Collection Basics
ExerciseName: [Collections Basics](https://launchschool.com/lessons/85376b6d/assignments/39c98ed0)
FileName: collections_basics.rb
Created On: 10/03/2020
=end

# Collection Basics

Learning Objectives:

LO     | Description
------ | -------
LO 4-1 | Define what are collections.
LO 4-2 | How to work with collections.
LO 4-3 | How are collections structured.
LO 6-4 | How to reference the individual elements within them.
LO 6-5 | How to assign the individual elements within them.

### LO 4-1: What are collections?
>  Collections in Ruby are data structure objects made up of individual elements such as `Strings`, `Arrays`, `Hashes`

### LO 4-2: How to work with collections?
* Elemental Reference
    - represented by `[]` is used to reference elements 
* Conversion
    - Methods exists to convert strings to arrays and arrays to strings.
        - String to array `str.chars`
        - Array to string `str.join`
        - Array to hash `arr.to_h`
        - Hash to Array `hsh.to_a`
* Element Assignment
    - represented by `[]=` is used to assign/reassign elements

### LO 4-3: How are collections structured?
* Strings
    - String data structures are index-based sequence of characters enclosed in quotes.
* Arrays
    - Array data structures are index-based lists of items and enclosed in brackets
* Hashes
    - Hash data structures are key value pair lists of items enclosed in curly braces. 

### LO 4-4: How to reference individual elements?
* Strings
    - Elements in `Strings` are referenced by their `index value` which is unique, using element operator `[]`.

        ```ruby
        # Single character reference
        str = "abcdefg"
        str[2] 
        => c

        # Multiple character reference
        str = "abcdefg"
        str[2,3] # str[starting point, length]
        => 'cde'  # string
        ```
* Arrays
    - Elements in `Arrays` are referenced by their `index value` which is unique, using the elmement operator `[]`. 
        ```ruby
        arr = ["a","b","c","d","e","f","g"]
        arr[2,3] #arr[starting point, length]
        => ["c", "d", "e"] # returns array

        arr[2,3][0]
        => "c" # returns string
        ```
* Hashes
    - Elements in `Hashes` are referenced by their  `key` which is unique, or by their `value` which does not have to be unique using the element operator[]
        ```ruby
        hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'mint' => 'herb' }

        hsh["fruit"]
        => "apple"

        hsh.fetch("mint")
        => "herb"

        hsh.keys      
        => ["fruit", "carrot", "mint"]

        hsh.values    
        => ["fruit", "vegetable", "herb"]

        hsh.values[2]
        => "herb"
        ```

### LO 4-5: How to assign individual elements?
* Strings
    - Elements in `Strings` are assign/reassign characters using the `index assigment` operator `[]=`.
        ```ruby
        # Single character reference
        str = "abcdefg"
        str[2]= "-" 
        => c
        
        puts str
        "ab-defg"
        => nil
        ```
* Arrays
    - Elements in `Arrays` are assigned/reassigned by their `index value` which is unique, using the `index assigment` operator `[]=` 
            ```ruby
        # Single character reference

        arr = ["a","b","c","d","e","f","g"]
        arr[2]= "e"
        => ["c", "d", "e"] # returns array

        arr[2,3][0]
        => "e" # returns string
        ```
* Hashes
    - Elements in `Hashes` are assigned/reassigned by their  `key` which is unique, or by their `value` which does not have to be unique using the `index assignment` operator[]
        ```ruby
        hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'mint' => 'vegetable' }
        hsh["mint"]= "herb"
        => 'herb' # string
        p hsh 
        => {"apple"=>"fruit", "carrot"=>"vegetable", "mint"=>"herb"}

        hsh["zinc"]="mineral"
        p hsh
        => {"apple"=>"fruit", "carrot"=>"vegetable", "mint"=>"herb"}
        ```


