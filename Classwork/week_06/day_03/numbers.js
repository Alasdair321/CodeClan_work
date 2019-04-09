const numbers = [1, 2, 3, 4, 5];

// const getEvens = (numbers) => {
//   const result = [];
//   numbers.forEach((num) => {
//     if (num%2 === 0) {
//       result.push(num);
//     }
//   }
// });
// getEvens(numbers);
//
// const getEvens = () => (numbers) {
//   const result = [];
//   numbers.forEach ((num)=>{
//     if (num%2 === 0) {
//       result.push(num);
//     }
//   })
// }

// const sumElements = (numbers) => {
//   let total = 0;
//   numbers.forEach((num)=>{
//     total += num;
//   })
//   return total;
// };
//
// console.log(sumElements(numbers));

const numberX2 = numbers.map((num) => {
  return num * 2
});
console.log(numberX2);
