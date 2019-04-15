const PubSub = require('../helpers/pub_sub.js');

const MapView = function (mymap){
    this.mymap = mymap;
};

MapView.prototype.generate = function (){
    // var mymap = L.map('mapid').setView([51.505, -0.09], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox.streets',
        accessToken: 'pk.eyJ1IjoiYWxhc2RhaXIzMjEiLCJhIjoiY2p1aHRtc3gyMDM4bDRlcGVoY2YwZzFwZyJ9.bOkojmu7l5VbM5zdlSxQhA'
    }).addTo(this.mymap);
    // let marker = L.marker([51.5, -0.09]).addTo(this.mymap);
    // marker.bindPopup("Latitude: 51.5, Longitude: -0.09").openPopup();
    this.mymap.on('click', this.onMapClick);

};

// MapView.prototype.bindEvents = function(){
// };

MapView.prototype.onMapClick = function (e) {
    // alert("You clicked the map at " + e.latlng);
    // console.log(e.latlng);
    // const lat = this.toFixedTrunc(e.latlng['lat'], 3);
    // console.log(e);
    // console.log(e.latlng['lng']);
    // let marker = L.marker([e.latlng['lat'], e.latlng['lng']]).addTo(this.mymap);
    // marker.bindPopup("hello");
    PubSub.publish('MapView:LocationChosen',e.latlng);
}

// MapView.prototype.toFixedTrunc = function (value, n) {
//     const v = value.split('.');
//     if (n <= 0) return v[0];
//     let f = v[1] || '';
//     if (f.length > n) return `${v[0]}.${f.substr(0,n)}`;
//     while (f.length < n) f += '0';
//     return `${v[0]}.${f}`
//   }

module.exports = MapView;
