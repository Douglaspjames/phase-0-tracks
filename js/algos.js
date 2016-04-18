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


//write a function that takes two objects and checks to see if the objects share at least one key-value pair.
//If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, 
//the function would return true, because at least one key-value pair matches between the two objects. 
//If no pairs match, the function should return false


//PSEUDOCODE
//create two objects containing key-value pairs.
//write function that iterates through both objects and compares the keys and values.
//if the objects share at least one key or value return "true"
// if the objects don't share any common keys or values return "false"

var man1 = {name: "Steven", 'age': 54};
var man2 = {name: "Tamir", age: 54};
var men = man1.concat(man2);

function compare(x, y) {
  return x + y;

var arrayLength = men.length;
for (var i = 0; i < arrayLength; i++) {
    alert(myStringArray[i]);
    //Do something
}


