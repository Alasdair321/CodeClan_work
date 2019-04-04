const UpperCaser = function (words) {
  this.words = words
}

UpperCaser.prototype.toUpperCase = function () {
  const upperCaseArray = this.words.map((word) => {
    return word.toUpperCase();
  })
  return upperCaseArray;
}

module.exports = UpperCaser;
