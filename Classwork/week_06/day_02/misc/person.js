const Person = function(name, sandwich, shirt, pet) {
  this.name = name;
  this.sandwich = sandwich;
  this.shirt = shirt;
  this.pet = pet;
  };

Person.prototype.greet = function () {
  return `Hi, my name is ${this.name}`
};

Person.prototype.feed = function (food) {
  return `${this.name} fed ${this.pet.name} some ${food}, ${this.pet.name} the ${this.pet.species} asked for more.`
};

module.exports = Person;
