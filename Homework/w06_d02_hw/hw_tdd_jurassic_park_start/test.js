const Park = require('./models/park.js');
const Dinosaur = require('./models/dinosaur.js');

let dinosaur1;
let dinosaur2;
let dinosaur3;
let dinosaur4;
let dinosaur5;
let park;

dinosaur1 = new Dinosaur('t-rex', 'carnivore', 50);
dinosaur2 = new Dinosaur('velociraptor', 'carnivore', 40);
dinosaur3 = new Dinosaur('troodon', 'carnivore', 30);
dinosaur4 = new Dinosaur('plateosaurus', 'herbivore', 20);
dinosaur5 = new Dinosaur('triceratops', 'herbivore', 35)
dinosaurs = [dinosaur1, dinosaur2, dinosaur3, dinosaur4];
park = new Park(`Jurassic`, 10, dinosaurs);


const mostValuableDino = function(){
 let sortable = [];
 for (dino of dinosaurs){
   let guests = dino.guestsAttractedPerDay;
   sortable.push(guests);
   console.log(guests);
 };
 console.log(sortable);
 sortable.sort();

 let number = sortable.pop();
console.log(number);
 for (dino of dinosaurs){
   if (dino.guestsAttractedPerDay === number){
     return dino
   };
 };
};

let answer = mostValuableDino();
console.log(answer);
//
//
// const popularDinosaur = function() {
//   let popularityArray = [];
//   for (dino of dinosaurs) {
//     popularityArray.push(dino.guestsAttractedPerDay);
//     // console.log(popularityArray);
//   }
//   let maxPopularity = 0;
//   let index = -1;
//   let indexRecorded;
//   for (popularity of popularityArray) {
//     index += 1;
//     if (popularityArray[index] > maxPopularity) {
//       maxPopularity = popularityArray[index];
//       indexRecorded = index;
//     }
//     // console.log(index);
//     // console.log(popularity);
//     console.log(maxPopularity);
//     console.log(indexRecorded);
//   }
//   return `The most popular dinosaur is `;
// };
//
// popularDinosaur();
