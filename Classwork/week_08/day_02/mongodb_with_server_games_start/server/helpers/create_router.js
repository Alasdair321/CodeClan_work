const express = require('express');
const ObjectID = require('mongodb').ObjectID;

const createRouter = function (collection) {

  const router = express.Router();

  // index
  router.get('/', (req, res) => {
    collection.find().toArray()
      .then((docs) => res.json(docs))
  });

  // show
  router.get('/:id', (req, res)=>{
    const id = req.params.id;
    collection
    .findOne({_id: ObjectID(id)})
    .then((docs) => res.json(docs));
  })

  router.post('/', (req, res)=>{
    const newData = req.body;
    collection
    .insertOne(newData)
    .then(()=>collection.find().toArray())
    .then((docs)=>res.json(docs));
  })
  
  return router;

};

module.exports = createRouter;