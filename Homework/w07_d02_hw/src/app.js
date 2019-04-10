const instFamData = require('./data/instrument_family_data.js');
const instFam = require('./models/instrument_families.js');
const resultView = require('./views/result_view.js');
const selectView = require('./views/select_view.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('JavaScript Loaded');

instrumentFamilies = new instFam(instFamData);
instrumentFamilies.bindEvents();

const dropdown = document.querySelector('#instrument-families')
const selectionView = new selectView(dropdown);
selectionView.bindEvents();

const section = document.querySelector('#result-text')
const resultViewer = new resultView(section);
// resultViewer.bindEvents();

});
