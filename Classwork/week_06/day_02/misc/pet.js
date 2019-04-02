const Pet = function(name, species) {
  this.name = name;
  this.species = species;
}

Pet.prototype.eat = function(food) {
  return `${this.name} the ${this.species} ate a ${food}.`;
}

module.exports = Pet;
