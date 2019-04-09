const PubSub = require('../helpers/pub_sub.js');

const PrimeChecker = function () {};

PrimeChecker.prototype.bindEvents = function () {
  const callback = (event) => {
    console.log(event);
    const numberEntered = event.detail;
    const isPrime = this.numberIsPrime(numberEntered);
    PubSub.publish('primechecker:boolean', isPrime);
  };
  PubSub.subscribe('form-view:number', callback);
};

PrimeChecker.prototype.numberIsPrime = function (number) {
  if (number <= 1) {
    return false;
  }
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
        return false;
    }
  }
  return true;
};

module.exports = PrimeChecker;
