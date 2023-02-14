//Dropdown menu
let dropdown = document.getElementById("dropdownmenu");
let menuItems = document.getElementById("menuitems");
dropdown.addEventListener("click", function () {
  menuItems.style.display = "block";
});
dropdown.addEventListener("mouseleave", function () {
  menuItems.style.display = "none";
});

//Results
let url =
  "https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyC7P5F4fU_8w3YnUjDD52aKz64Xk9vLn5w&query=yoga-studios-in-ipswich";

dropdown.addEventListener("mouseleave", function () {
  menuItems.style.display = "none";
});

//Display All
function displayResults(url) {
  fetch(url)
    .then((response) => response.json())
    .then(function (results) {
      for (let i = 0; i < results.results.length; i++) {
        //Ratings
        let rating = results.results[i].rating;
        if (rating == 0) {
          rating = "";
        } else if (rating <= 1) {
          rating = "⭐";
        } else if (rating <= 2) {
          rating = "⭐⭐";
        } else if (rating <= 3) {
          rating = "⭐⭐⭐";
        } else if (rating <= 4) {
          rating = "⭐⭐⭐⭐";
        } else if (rating <= 5) {
          rating = "⭐⭐⭐⭐⭐";
        }
        //Other info
        let all =
          `<li>` +
          `<strong>${results.results[i].name} ` +
          `</strong>` +
          `<br>` +
          `<br>` +
          `${results.results[i].formatted_address} ` +
          `<br>` +
          `<br>` +
          `This studio is rated ${results.results[i].rating}/5 based on ${results.results[i].user_ratings_total} reviews` +
          "<br>" +
          rating +
          `</li>`;
        //Append info to results
        let mapHTML = document.getElementById("results");
        mapHTML.innerHTML += all;
      }
      //Intro text before map
      let intro = document.getElementById("intro");
      let text = `We found ${results.results.length} `;
      intro.insertAdjacentText("afterbegin", text);
    });
}
displayResults(url);

//Map
function initMap() {
  let options = {
    zoom: 12,
    center: { lat: 52.0567, lng: 1.1482 },
  };

  //lat lng arrays
  let lat = [];
  let lng = [];

  // get lat and lng from api
  function getLatLng(url) {
    fetch(url)
      .then((response) => response.json())
      .then(function (results) {
        //loop through lat lng values, push to arrays
        for (let i = 0; i < results.results.length; i++) {
          lat.push(results.results[i].geometry.location.lat);
          lng.push(results.results[i].geometry.location.lng);
          //call add marker with  array values
          let content =
            `<div style = 'width:200px;min-height:40px'>` +
            `<strong>` +
            `${results.results[i].name}` +
            `</strong>` +
            `<br>` +
            `${results.results[i].formatted_address} ` +
            `</div>`;
          addMarker({ lat: lat[i], lng: lng[i] }, (infoBox = content));
        }
      });
  }
  getLatLng(url);

  let map = new google.maps.Map(document.getElementById("map"), options);

  let activeWindow;

  // function to add marker
  function addMarker(lat, lng, content) {
    let marker = new google.maps.Marker({
      position: lat,
      lng,
      map,
      title: "Click to find out more 🔍",
    });

    //set info box text
    const infowindow = new google.maps.InfoWindow({
      content: infoBox,
    });

    //on click marker action
    marker.addListener("click", () => {
      //close any open windows
      if (activeWindow) {
        activeWindow.close();
      }
      map.setZoom(14);
      map.setCenter(marker.getPosition());
      infowindow.open({
        anchor: marker,
        map,
      });
      activeWindow = infowindow;
    });
  }
}
