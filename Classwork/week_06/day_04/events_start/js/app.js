document.addEventListener('DOMContentLoaded', () => {
  console.log('JavaScript has loaded');
// -----------------------------------------------------------------------------

const button = document.querySelector('#button');
const handleButtonClick = () => {
  const resultParagraph = document.querySelector('#button-result');
  resultParagraph.textContent = 'Button has been clicked!'
};
button.addEventListener('click', handleButtonClick);
// -----------------------------------------------------------------------------

const textInput = document.querySelector('#input');
const handleTextInput = (event) => {
  const resultText = document.querySelector('#input-result');
  resultText.textContent = `\"${event.target.value}\" has been typed!`;
};

textInput.addEventListener('input', handleTextInput);
// -----------------------------------------------------------------------------

const selectorInput = document.querySelector('#select');
const handleSelectorChange = (event) => {
  const resultSelectorText = document.querySelector('#select-result');
  resultSelectorText.textContent = `\"${event.target.value}\" has been chosen!`;
};
selectorInput.addEventListener('change', handleSelectorChange);

// -----------------------------------------------------------------------------

const form = document.querySelector('#form');
const handleFormSubmit = (event) => {
  event.preventDefault();
  const resultParagraph = document.querySelector('#form-result');
  resultParagraph.textContent = `Your name is ${event.target.first_name.value} ${event.target.last_name.value}!`
};
form.addEventListener('submit', handleFormSubmit);

});
