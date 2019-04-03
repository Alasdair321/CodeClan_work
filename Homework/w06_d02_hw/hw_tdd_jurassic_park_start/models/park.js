const Park = function(name, ticketPrice, dinosaurs) {
  this.name = name;
  this.ticketPrice = ticketPrice;
  this.dinosaurs = dinosaurs;
}

// - Add a dinosaur to its collection of dinosaurs
Park.prototype.addDinosaur = function (dinosaur) {
  this.dinosaurs.push(dinosaur)
  return this.dinosaurs
};

// - Remove a dinosaur from its collection of dinosaurs
Park.prototype.removeDinosaur = function (dinosaur) {
  let index = this.dinosaurs.indexOf(dinosaur)
  this.dinosaurs.splice(index, 1);
  return this.dinosaurs;
};

// - Find the dinosaur that attracts the most visitors
Park.prototype.popularDinosaur = function () {
  let popularityArray = [];
  for (const dino of this.dinosaurs) {
    popularityArray.push(dino.guestsAttractedPerDay);
  }
  let maxPopularity = 0;
  let index = -1;
  let indexRecorded;
  for (const popularity of popularityArray) {
    index += 1;
    if (popularityArray[index] > maxPopularity) {
      maxPopularity = popularityArray[index];
      indexRecorded = index;
    }
  }
  return `The most popular dinosaur is ${this.dinosaurs[indexRecorded].species}`;
};

// - Find all dinosaurs of a particular species
Park.prototype.speciesDinosaurAll = function (species) {
  let allDinoOfSpecies = [];
  for (const dino of dinosaurs) {
    if (dino.species === species) {
      allDinoOfSpecies.push(dino);
    }
  }
  return allDinoOfSpecies;
};

// - Calculate the total number of visitors per day
Park.prototype.totalVisitorsDay = function () {
  let totalVisitorsDay = 0;
  for (const dino of dinosaurs) {
    totalVisitorsDay += dino.guestsAttractedPerDay;
  }
  return totalVisitorsDay;
};

// - Calculate the total number of visitors per year
Park.prototype.totalVisitorsYear = function () {
  let totalVisitorsDay = 0;
  for (const dino of dinosaurs) {
    totalVisitorsDay += dino.guestsAttractedPerDay;
  }
  return totalVisitorsDay*365;
};

// - Calculate the total revenue from ticket sales for one year
Park.prototype.totalSalesYear = function () {
  let totalVisitorsDay = 0;
  for (const dino of dinosaurs) {
    totalVisitorsDay += dino.guestsAttractedPerDay;
  }
  return totalVisitorsDay*365*this.ticketPrice;
};

// - Remove all dinosaurs of a particular species
Park.prototype.removeDinosaurSpecies = function (species) {
  let index = -1;
  let indexRecorded = [];
  for (const dino of dinosaurs) {
    index += 1
    if (dino.species === species) {
      indexRecorded.push(index);
    }
  }
  for (const i of indexRecorded) {
    this.dinosaurs.splice(i, 1);
  }
  return this.dinosaurs;
};

// - Provide an object containing each of the diet types and the number of dinosaurs in the park of that diet type


module.exports = Park;
