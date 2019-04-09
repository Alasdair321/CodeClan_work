const PubSub = require('../helpers/pub_sub.js');

const WordCounter = function() {

};

WordCounter.prototype.bindEvents = function () {
  const callback = (event) => {
    const inputtedText = event.detail;
    const numberOfWords = this.countWords(inputtedText);
    PubSub.publish('number-of-words', numberOfWords);
  };
  PubSub.subscribe('words-typed', callback );
}

WordCounter.prototype.countWords = function (text) { // NEW
  const words = text.split(' ');
  return words.length;
};

module.exports = WordCounter;
