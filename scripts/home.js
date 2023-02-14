console.log("test");

//Dropdown menu
let dropdown = document.getElementById("dropdownmenu");
let menuItems = document.getElementById("menuitems");
dropdown.addEventListener("click", function () {
  menuItems.style.display = "block";
  console.log("clicked dropdown 1");
});
dropdown.addEventListener("mouseleave", function () {
  menuItems.style.display = "none";
});

//Dropdown menu 2
let dropdown2 = document.getElementById("dropdownmenu2");
let menuItems2 = document.getElementById("menuitems2");
dropdown2.addEventListener("click", function () {
  menuItems2.style.display = "block";
  console.log("clicked dropdown 2");
});
dropdown2.addEventListener("mouseleave", function () {
  menuItems2.style.display = "none";
});
