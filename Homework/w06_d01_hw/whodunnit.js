// let murderer = 'Miss Scarlet';
// let weapon = 'candlestick';
//
// const scenario = {
//   murderer: murderer,
//   weapon: weapon,
//   room: 'library'
// }
// const redHerring = function() {
//
//   const switchMurderer = function() {
//     scenario.murderer = 'Professor Plum';
//   }
//
//   const backStab = function() {
//     if (scenario.weapon === 'candlestick') {
//       murderer = 'Mrs White';
//     }
//   }
//
//   const switchWeapon = function() {
//     weapon = 'revolver';
//     if (scenario.weapon === 'candlestick') {
//       scenario.weapon = weapon;
//     } else {
//       scenario.weapon = 'lead pipe';
//     }
//   }
//
//   switchMurderer();
//   switchWeapon();
//   backStab();
//
// }
//
// const declareWeapon = function() {
//   return `The weapon was a ${weapon}`;
// }
//
// redHerring();
//
// const declareMurderer = function() {
//   return `The murderer is ${murderer}.`;
// }
//
// const verdict = declareMurderer() + declareWeapon();
//
//
// console.log(verdict);

// --------------

let weapon = "Revolver";



const changeWeapon = () => {
  let weapon = "Broom";
  return `The murder weapon was a ${weapon}`;
};

const verdict = changeWeapon();
console.log(verdict);
