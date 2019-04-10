const PubSub = require('../helpers/pubsub.js');

const SelectView = function (menu) {
  this.menu = menu;
}

SelectView.prototype.bindEvents = function () {
  PubSub.subscribe('Instrument:allinstrumentsready', (evt) => {
    console.log('hello');
    // const allInstruments = evt.detail;
    // this.populate(allInstruments);
  });

  // this.menu.addEventListener('change', (event)=>{
  //   console.log(event);
  //   PubSub.publish('SelectView:change', event.target.id);
  // });
};

SelectView.prototype.populate = function (allInstruments) {
  allInstruments.forEach((instrumentfamily, index) => {
      const option = document.createElement('option');
      option.textContent = instrumentfamily.name;
      option.value = index;
      this.element.appendChild(option);
    })
};

module.exports = SelectView;
