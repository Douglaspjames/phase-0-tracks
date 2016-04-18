//write a function that takes an array of words or phrases and returns the longest word in the array.


//PSEUDOCODE
//create an array of words or phrases
//write a function that iterates through array and finds out the length of each word/phrase
//first sort array longest to shortest
// then print first string in array
//return the longest word/phrase in array




var long = ["mercury", "Venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune", "lots of asteroids"];
var sorted = long.sort(function (a, b) { return b.length - a.length });

var long2 = ["baseball", "football", "basketball", "hockey"];
var sorted2 = long2.sort(function (a, b) { return b.length - a.length });

var long3 = ["cars", "boats", "trains", "trolleys"];
var sorted3 = long3.sort(function (a, b) { return b.length - a.length });

var long4 = ["long phrase","longest phrase","longer phrase"];
var sorted4 = long4.sort(function (a, b) { return b.length - a.length });

//console.log(long);
console.log(sorted[0]);
console.log(sorted2[0]);
console.log(sorted3[0]);
console.log(sorted4[0]);


console.log("----------")

//write a function that takes two objects and checks to see if the objects share at least one key-value pair.
//If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, 
//the function would return true, because at least one key-value pair matches between the two objects. 
//If no pairs match, the function should return false


//PSEUDOCODE
//create two objects containing key-value pairs.
//write function that iterates through both objects and compares the keys and values.
//if the objects share at least one key or value return "true"
// if the objects don't share any common keys or values return "false"

function compare(x, y) {
var share = 1;

  var value1 = [];

    for (key in x) {
    var a = x[key];
    value1.push(a)
    }

  var value2 = [];

    for (key in y) {
    var b = y[key];
    value2.push(b)
  }

  var key1 = Object.keys(x);
  var key2 = Object.keys(y);
  
    for (var i = 0; i < key1.length; i++) {
    if (key1[i] == key2[i] && value1[i] == value2[i]) 
    { share = 2; }
    }

  if (share > 1) {
    return true;}
  else {
    return false;}
}

var man1 = {name: "Steven", 'age': 54};
var man2 = {name: "Tamir", age: 54};
var man3 = {name: "Fred Gloob", age: 40}
var man4 = {name: "Prince", age: 50}

console.log(compare(man1, man2));
console.log(compare(man3, man4));



//Write function that takes an integer as an argument
//it builds and returns an array of strings that is the given length of integer
//if we give "3" as argument it returns an array of 3 random words
//words should be a minimum of 1 letter and a maximum of 10
//need to know how to generate a random number

//Add driver code that does the following 10 times: generates an array, 
//prints the array, feeds the array to your "longest word" function, and prints the result.




// function build_array(x) {
//     for (var i = 0; i < x.length; i++) {
//    if (key1[i] == key2[i] && value1[i] == value2[i]) {
//       share++;              // The function returns the product of p1 and p2
// }


