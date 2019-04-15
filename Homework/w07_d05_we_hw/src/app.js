const ChartView = require('./views/ChartView.js');
const MapView = require('./views/MapView.js');
const ResultView = require('./views/ResultView.js');
const SelectView = require('./views/SelectView.js');
const CrimeFinder = require('./models/CrimeFinder.js');

document.addEventListener('DOMContentLoaded',()=>{
  console.log(`js loaded`);

  var mymap = L.map('mapid').setView([51.505, -0.09], 13);
  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 18,
      id: 'mapbox.streets',
      accessToken: 'pk.eyJ1IjoiYWxhc2RhaXIzMjEiLCJhIjoiY2p1aHRtc3gyMDM4bDRlcGVoY2YwZzFwZyJ9.bOkojmu7l5VbM5zdlSxQhA'
  }).addTo(mymap);
  var marker = L.marker([51.5, -0.09]).addTo(mymap);
  marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();


});
