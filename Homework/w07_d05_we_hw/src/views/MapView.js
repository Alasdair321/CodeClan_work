const PubSub

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
    var marker = L.marker([51.5, -0.09]).addTo(this.mymap);
    marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();
    this.mymap.on('click', this.onMapClick);

};

// MapView.prototype.bindEvents = function(){
// };

MapView.prototype.onMapClick = function (e) {
    // alert("You clicked the map at " + e.latlng);
    console.log(e.latlng);
    
}

module.exports = MapView;
