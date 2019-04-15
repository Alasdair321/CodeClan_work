const express = require('express');

const createRouter = function (data){
    const router = express.Router();

    // index
    router.get('/', (req, res) => {
    res.json(data);
  })
  
  // show
  router.get('/:id', (req, res)=>{
    res.json(data[req.params.id]);
  })
  
  // create
  router.post('/', (req, res)=>{
  data.push(req.body);
  res.json(data);
  })
  
  // put
  router.put('/:id', (req, res)=> {
    data[req.params.id] = req.body;
    res.json(data);
  })
  
  // delete
  router.delete('/:id', (req, res)=> {
    data.splice(req.params.id, 1);
    res.json(data);
  })

  return router;
}

module.exports = createRouter;