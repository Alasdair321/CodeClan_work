const assert = require('assert');
const Park = require('../models/park.js');
const Dinosaur = require('../models/dinosaur.js');

describe('Park', function() {

  let dinosaur1;
  let dinosaur2;
  let dinosaur3;
  let dinosaur4;
  let dinosaur5;
  let park;

  beforeEach(function() {
    dinosaur1 = new Dinosaur('t-rex', 'carnivore', 50);
    dinosaur2 = new Dinosaur('velociraptor', 'carnivore', 40);
    dinosaur3 = new Dinosaur('troodon', 'carnivore', 30);
    dinosaur4 = new Dinosaur('plateosaurus', 'herbivore', 20);
    dinosaur5 = new Dinosaur('triceratops', 'herbivore', 35)
    dinosaurs = [dinosaur1, dinosaur2, dinosaur3, dinosaur4];
    park = new Park(`Jurassic`, 10, dinosaurs);
  })

  it('should have a name', () => {
    const actual = park.name;
    assert.strictEqual(actual, `Jurassic`)
  });
  it('should have a ticket price', () => {
    const actual = park.ticketPrice;
    assert.strictEqual(actual, 10)
  });
  it('should have a collection of dinosaurs', () => {
    const actual = park.dinosaurs;
    assert.deepStrictEqual(actual, [dinosaur1, dinosaur2, dinosaur3, dinosaur4])
  });
  it('should be able to add a dinosaur to its collection', () => {
    const actual = park.addDinosaur(dinosaur5);
    assert.deepStrictEqual(actual, [dinosaur1, dinosaur2, dinosaur3, dinosaur4, dinosaur5]);
  });
  it('should be able to remove a dinosaur from its collection', () => {
    const actual = park.removeDinosaur(dinosaur1);
    assert.deepStrictEqual(actual, [dinosaur2, dinosaur3, dinosaur4]);
  });
  it('should be able to find the dinosaur that attracts the most visitors', () => {
    const actual = park.popularDinosaur();
    assert.strictEqual(actual, `The most popular dinosaur is t-rex`);
  });
  it('should be able to find all dinosaurs of a particular species', () => {
    const actual = park.speciesDinosaurAll(`velociraptor`);
    assert.deepStrictEqual(actual, [dinosaur2])
  });
  it('should be able to remove all dinosaurs of a particular species', () => {
    const actual = park.removeDinosaurSpecies(`velociraptor`);
    assert.deepStrictEqual(actual, [dinosaur1, dinosaur3, dinosaur4])
  });
  it('should be able to calculate the number of visitors per day', () => {
    const actual = park.totalVisitorsDay();
    assert.strictEqual(actual, 140)
  });
  it('should be able to calculate the number of visitors per totalSalesYear', () => {
    const actual = park.totalVisitorsYear();
    assert.strictEqual(actual, 51100)
  });
  it('should be able to calculate the revenue from ticket sales per year', () => {
    const actual = park.totalSalesYear();
    assert.strictEqual(actual, 511000)
  });
});
