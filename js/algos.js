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
var share = 0;
var key1 = Object.keys(x);
var key2 = Object.keys(y);
var value1 = [];
var value2 = [];

 for (var key in x) {
    value1.push(x[key]);
 }

 for (var key in y) {
    value2.push(y[key]);
  }

 for (var i = 0; i < key1.length; i++) {
   if (key1[i] == key2[i] && value1[i] == value2[i]) {
      share++; 
    }
  }

  if (share > 0) {
    return true;
  }
  else {
    return false;
  }
}

// function compare(x, y) {
// var 

//   var obj = {a:1, b:2, c:3};
    
// for (var prop in obj) {
//   console.log("obj." + prop + " = " + obj[prop]);
// }




var man1 = {name: "Steven", 'age': 54};
var man2 = {name: "Tamir", age: 54};
var man3 = {name: "Fred Gloob", age: 40}
var man4 = {name: "Prince", age: 50}

console.log(compare(man1, man2));
console.log(compare(man3, man4));

