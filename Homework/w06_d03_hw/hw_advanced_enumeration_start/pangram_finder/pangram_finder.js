const PangramFinder = function(phrase) {
  this.alphabet = 'qwertyuiopasdfghjklzxcvbnm'.split('');
  this.phrase = phrase;
}

PangramFinder.prototype.isPangram = function() {
  const removedChars = this.removeSpecials();
  const lowerCase = removedChars.toLowerCase();
  return this.alphabet.every(this.hasLetter);
}

PangramFinder.prototype.removeSpecials = function() {};
const lower = this.phrase.toLowerCase();
const upper = this.phrase.toUpperCase();

let result = "";
for (let i = 0; i < lower.length; ++i) {
  if (lower[i] != upper[i] || lower[i].trim() === '')
    result += this.phrase[i];
}
return result;
}

PangramFinder.prototype.hasLetter = function(letter) {
  return this.phrase.includes(letter);
}

module.exports = PangramFinder;
