var colors = ["red", "blue", "gray", "purple"];

var horseNames = ["Ed", "Clovis", "Fred", "Joe"];

colors.push("pink");

horseNames.push("Wendy");

console.log(colors);
console.log(horseNames);

var coloredHorses = {};

for (var i = 0; i < horseNames.length; i++) {
  coloredHorses[horseNames[i]] = colors[i];
}

console.log(coloredHorses);



function Car(color, interior) {
  this.color = color;
  this.interior = interior;
  
  this.revEngine = function() { 
    console.log("REVVV"); 
  };
}  

var cars = [];

console.log ("Let's build a car");
var newCar = new Car("black", "leather");
console.log("We built a " + newCar.color + " car with " + newCar.interior + " interior")
newCar.revEngine();

console.log ("Let's build a car");
var anotherNewCar = new Car("Gray", "Leather");
anotherNewCar.revEngine = function() { console.log("Vroom"); };
console.log("We built a " + anotherNewCar.color + " car with " + anotherNewCar.interior + " interior.");
anotherNewCar.revEngine();

console.log ("Let's build a car");
var yetAnotherNewCar = new Car("Pink", "Black Fabric");
console.log("We built a " + yetAnotherNewCar.color + " car with " + yetAnotherNewCar.interior + " interior")
yetAnotherNewCar.revEngine();



  
  
  
  
  
  
  
