const IsogramFinder = function(word) {
  this.word = word;
}

IsogramFinder.prototype.isIsogram = function() {
const result = this.word.every(this.letterReccurs);
return result;
}

IsogramFinder.prototype.letterReccurs = function (letter) {
  return this.word.includes(letter);
};

module.exports = IsogramFinder;
