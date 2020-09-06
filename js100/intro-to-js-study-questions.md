# Launch School - Intro To Programming with Javascript

What are constructors?
* factors that create values of a particular type.
* represents a blueprint for the datatype with the same name.

What is a String constructor?
* A factory that creates values of type String.

Whats the difference between instance method and static method?
1. Instance method format: `Constructor.protype.methodName()`
    * You apply instance method to the value of the type that the constructor represents.
    ```javascript
    "Hello, ".concat("World!")
    ```
2. Static method format: `Contstructor.methodName()`
    * To call a static method, you use the contructor name (String) instead of a value
    ```javascript
    String.fromCharCode(97)  //returns char value of UTF-15 code point 97
    ```
    * Note hat in the example above, we didn't need a string to call it, instead the constructor, `String` was used to call the method.

How would you search javascript array using the MDN documentation?
* mdn javascript arrays


