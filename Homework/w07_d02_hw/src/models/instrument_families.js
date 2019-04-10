const PubSub = require('../helpers/pubsub.js');

const InstrumentFamilies = function(data) {
  this.data = data;
};

InstrumentFamilies.prototype.bindEvents = function() {
  console.log(this.data);
  PubSub.publish('Instrument:allinstrumentsready', this.data);

  PubSub.subscribe('SelectView:change', (event) => {
    const selectedIndex = event.detail;
    this.publishInstrumentDetail(selectedIndex);
  })
};

InstrumentFamilies.prototype.publishInstrumentDetail = function(index) {
  const selectedInstrument = this.data[index];
  PubSub.publish('Instrument:selected-ready', selectedInstrument);
};

module.exports = InstrumentFamilies;
