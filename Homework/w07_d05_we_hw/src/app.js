const ChartView = require('./views/ChartView.js');
const MapView = require('./views/MapView.js');
const ResultView = require('./views/ResultView.js');
const SelectView = require('./views/SelectView.js');
const CrimeFinder = require('./models/CrimeFinder.js');

document.addEventListener('DOMContentLoaded',()=>{
  console.log(`js loaded`);

  const map = new MapView(L.map('mapid').setView([55.949734475860495, -3.1935882568359375], 13));
  map.generate();
  // map.bindEvents();

  const crimeFinder = new CrimeFinder();
  crimeFinder.bindEvents();

// hello 
});
