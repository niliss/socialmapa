// this is to get the location
function getLocation() {


if (navigator.geolocation) {
  var timeoutVal = 10 * 1000 * 1000;
  navigator.geolocation.getCurrentPosition(
    displayPosition, 
    displayError,
    // need to figure out if the 600... is indeed an hour interval..
    // does not provide right result right now
    { enableHighAccuracy: true, timeout: timeoutVal, maximumAge: 6 } //this timeout not working
  );
}
else {
  alert("You should upgrade your browser (e.g. Google Chrome or Firefox)");
}


function displayPosition(position) {
  if(position.coords.latitude && position.coords.longitude) {
   var map = new GMaps({
      div: '#map',
      lat: position.coords.latitude,
      lng: position.coords.longitude,
      width: "100%",
      height: "450px",
      zoom: 12
  });
  } else {
  var map = new GMaps({
    div: '#map',
    lat: 6.209238,
    lng: -75.571572,
    width: "100%",
    height: "450px",
    zoom: 6
  });
  }
  map.addMarker({
  lat: 6.209238,
  lng: -75.571572,
  title: 'Atom House',
  infoWindow: {
    content: '<h1>Location Name</h1>'
  }
  });

  
}

 
}


function displayError(error) {
  var errors = { 
    1: 'Permission denied',
    2: 'Position unavailable',
    3: 'Request timeout'
  };
  alert("Error: " + errors[error.code]);
}

getLocation()

 
