const PubSub = require('../helpers/pub_sub.js');

const FormView = function() {};

FormView.prototype.bindEvents = function() {
  const form = document.querySelector('#prime-checker-form');
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const numberEntered = event.target.number.value;
    PubSub.publish('form-view:number', numberEntered);
  });
};

module.exports = FormView;
