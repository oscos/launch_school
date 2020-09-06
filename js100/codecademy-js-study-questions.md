# Javascript 100 - Study Questions
> From CodeCademy Javascript module

## DataTypes and comments
* Data is printed, or logged, to the console, a panel that displays messages, with console.log().
* We can write single-line comments with // and multi-line comments between /* and */.
* There are 7 fundamental data types in JavaScript: strings, numbers, booleans, null, undefined, symbol, and object.
* Numbers are any number without quotes: 23.8879
* Strings are characters wrapped in single or double quotes: 'Sample String'
* The built-in arithmetic operators include +, -, *, /, and %.
* Objects, including instances of data types, can have properties, stored information. The properties are denoted with a . after the name of the object, for example: 'Hello'.length.
* Objects, including instances of data types, can have methods which perform actions. Methods are called by appending the object or instance with a period, the method name, and parentheses. For example: 'hello'.toUpperCase().
* We can access properties and methods by using the ., dot operator.
* Built-in objects, including Math, are collections of methods and properties that JavaScript provides.

## Review Variables:
* Variables hold reusable data in a program and associate it with a name.
* Variables are stored in memory.
* The var keyword is used in pre-ES6 versions of JS.
* let is the preferred way to declare a variable when it can be reassigned, and const is the preferred way to declare a variable with a constant value.
* Variables that have not been initialized store the primitive data type undefined.
* Mathematical assignment operators make it easy to calculate a new value and assign it to the same variable.
* The + operator is used to concatenate strings including string values held in variables
* In ES6, template literals use backticks ` and ${} to interpolate values into a string.
* The typeof keyword returns the data type (as a string) of a value.

## Conditions

1. which values are falsy— or evaluate to false when checked as a condition? The list of falsy values includes:

    * 0
    * Empty strings like "" or ''
    * null which represent when there is no value at all
    * undefined which represent when a declared variable lacks a value
    * NaN, or Not a Number

2. In a boolean condition, JavaScript assigns the truthy value to a variable if you use the || operator in your assignment.  Convert the following if statement to short circuit evaluation:
    ```javascript
    let defaultName;
    if (username) {
    defaultName = username;
    } else {
    defaultName = 'Stranger';
    }
    ```
Here are some of the major concepts for conditionals:

* An if statement checks a condition and will execute a task if that condition evaluates to true.
* if...else statements make binary decisions and execute different code blocks based on a provided condition.
* We can add more conditions using else if statements.
* Comparison operators, including <, >, <=, >=, ===, and !== can compare two values.
* The logical and operator, &&, or “and”, checks if both provided expressions are truthy.
* The logical operator ||, or “or”, checks if either provided expression is truthy.
* The bang operator, !, switches the truthiness and falsiness of a value.
* The ternary operator is shorthand to simplify concise if...else statements.
* A switch statement can be used to simplify the process of writing multiple else if statements. The break keyword stops the remaining cases from being checked and executed in a switch statement.

## Functions
1. What is hoisting in regards to function?

2. What are parameters?
    * A parameter is a named variable inside a function’s block which will be assigned the value of the argument passed in when the function is invoked.
    * Allow functions to accept input(s) and perform a task using the input(s).
    * We use parameters as placeholders for information that will be passed to the function when it is called.
    * Parameters are treated like variables within a function.

3. What are arguments
    * They are the values or variables that are passed to the function when it is called are called arguments.

4. What are helper functions?
    * They are functions that contain calls to other functions within their code.

5. What is a function Expression
    * A function inside an expression
    * In a function expression the function is usually omiited
    * The function epxression is usually stored in a variable.
    * function expressions can not be hoisted (called befor they are defined)

6. What is a anonymous function?
    * A function with no name.

7. What is arrow functions
    * Similar syntax to function expressions
    * Instead of having to use function, you use "fat arrow" ()=> notation


### Review Functions
* A function is a reusable block of code that groups together a sequence of statements to perform a specific task.

* A function declaration :

* Diagram showing the syntax of a function declaration
* A parameter is a named variable inside a function’s block which will be assigned the value of the argument passed in when the function is invoked:

* JavaScript syntax for declaring a function with parameters
* To call a function in your code:

* Diagram showing the syntax of invoking a function
* ES6 introduces new ways of handling arbitrary parameters through default parameters which allow us to assign a default value to a parameter in case no argument is passed into the function.

* To return a value from a function, we use a return statement.

* To define a function using function expressions:

* defining a function expression
* To define a function using arrow function notation:


* Function definition can be made concise using concise arrow notation:

* comparing single line and multiline arrow functions
* It’s good to be aware of the differences between function expressions, arrow functions, and function declarations. As you program more in JavaScript, you’ll see a wide variety of how these function types are used.

## SCOPE

### Global Scope
* In Global Scope, Variables are declared outside of blocks.

What are global variables?
* variables declared outside of blocks.
* they can be accessed by any code in the program because they are not bound inside a block.

#### Practice Good Scoping
Tightly scoping your variables will greatly improve your code in several ways:

* It will make your code more legible since the blocks will organize your code into discrete sections.
* It makes your code more understandable since it clarifies which variables are associated with different parts of the program rather than having to keep track of them line after line!
* It’s easier to maintain your code, since your code will be modular.
* It will save memory in your code because it will cease to exist after the block finishes running.