console.log("script running!");



function addBlackBorder() {
  var col = document.getElementById("hello");
  col.style.border = "10px solid black";
}

var col = document.getElementById("hello");
col.addEventListener("click", addBlackBorder);