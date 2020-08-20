/*
 * Launch School - Intro to Javascript
 * Basics - ex02.js
 * Answered 08/19/2020
*/

let num = 4936;


// let ones = num % 10;
// let tens = ((num % 100) - ones ) / 10;
// let hundreds = ((num % 1000) - (num % 100)) / 100;
// let thousands = ((num % 10000) - (num % 1000)) / 1000;

let thousands   = num % 10000;
let hundreds    = num % 1000;
let tens        = num % 100;
let ones        = num % 10;


thousands = (thousands - hundreds) / 1000;
hundreds  = (hundreds - tens) / 100;
tens      = (tens - ones) / 10;
// ones = ones;


console.log(num);
console.log(thousands);
console.log(hundreds);
console.log(tens);
console.log(ones);
