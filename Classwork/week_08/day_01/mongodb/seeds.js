use zoo; 
// db.dropDatabase();
// db.animals.insertMany([
//     {
//         name: 'Janet',
//         type: 'Polar Bear'
//     },
//     {
//         name: 'Ella',
//         type: 'Tortoise'
//     },
//     {
//         name: 'Norman',
//         type: 'Penguin',
//         age: 5
//     }
// ]);

// db.animals.findOne({ name: 'Norman'});

// const id = ObjectId('5cb483cdb44815314dbbbf7f');
// db.animals.findOne({_id: id});

// db.animals.updateOne({_id: id},{$set: {name: 'Monty'}});

// db.animals.deleteOne({_id: id});

db.animals.find({name: 'Ella', name: 'Norman'});