const PubSub = require('../helpers/pub_sub.js');

const ResultView = function () {};

ResultView.prototype.bindEvents = function () {
  PubSub.subscribe('primechecker:boolean', (event)=>{
    const isAPrimeNumber = event.detail;
    this.displayResult(isAPrimeNumber);
  });
};

ResultView.prototype.displayResult = function (result) {
  const resultElement = document.querySelector('#result');
  if (result === true) {
    resultElement.textContent = `It\'s a prime`
  } else {
    resultElement.textContent = `It\'s not a prime`
  }

};

module.exports = ResultView;
