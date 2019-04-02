const Pet = require('./pet.js')
const Person = require('./person.js')

const doggy = new Pet(`Noodle`, `Poodle`);
// console.log(doggy.eat(`strudel`));

const catty = new Pet(`Horse`, `Cat`);
// console.log(catty.eat(`it's own shite`));

const shaggy = new Person("Shaggy Rogers", "big yin", "green", doggy);
// console.log(shaggy);
// console.log(shaggy.greet());
console.log(shaggy.feed(`of it's own shite`));

const vegeta = new Person("Vegeta, Prince of all Saiyans", "Beans", "blue", catty);
// console.log(vegeta);
// console.log(vegeta.greet());
console.log(vegeta.feed(`dragonballs`));
