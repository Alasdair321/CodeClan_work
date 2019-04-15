const API_KEY = require('../helpers/api_key.js');
const PubSub = require('../helpers/pub_sub.js');
const Request = require('../helpers/request.js');

const CrimeFinder = function (){
    this.data = null;
};


CrimeFinder.prototype.bindEvents = function () {
    PubSub.subscribe('MapView:LocationChosen', (evt) => {    
      const crimeLoc = evt.detail;
      console.log(crimeLoc);
      this.getData(crimeLoc);
    });
  };
  
CrimeFinder.prototype.getData = function (crimeLoc) {
    const date = `2019-02`;
    const lat = crimeLoc['lat'];
    const lng = crimeLoc['lng'];
    const api = new API_KEY(date, lat, lng);
    // console.log(api);
    const url = api.Api_Key();
    // console.log(url);
    const request = new Request(url);
    request.get()
    .then((crime) => {
    this.data = crime;
    console.log(this.data);
    PubSub.publish('CrimeFinder:CrimesFound', this.data);
    })
    // .catch((err) => {
    // PubSub.publish('Activity:error', err);
    // });
};

module.exports = CrimeFinder;
