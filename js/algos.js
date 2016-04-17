//write a function that takes an array of words or phrases and returns the longest word in the array.

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

//console.log(long);
console.log(sorted[0]);
console.log(sorted2[0]);
console.log(sorted3[0]);


//write a function that takes two objects and checks to see if the objects share at least one key-value pair.