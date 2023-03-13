module.exports = (db) => {
    const {customer}=db
    return {
      list: (req, res) => {
        customer
          .findAll()
          .then((result) => {
            res.send(result);
          })
          .catch((err) => res.status(400).send(err));
      },
  
      getById: (req, res) => {
        var { id } = req.params;
        customer
          .findByPk(id)
          .then((result) => {
            res.json(result);
          })
          .catch((err) => res.status(400).send(err));
      },
  
      insert: (req, res) => {
        customer
          .create(req.body)
          .then((Item) => {
            //TODO: PEGAR ID DO NOVO OBJETO
            res.status(201).json(Item);
          })
          .catch((err) => res.status(400).send(err));
      },
  
      update: (req, res) => {
        const { id } = req.params;
  
        customer
          .findOne({
            where: { id },
          })
          .then((customer) => {
            var request = req.body;
  
            customer
              .update(request)
              .then((result) => {
                res.status(201).json(result);
              })
              .catch((err) => (res.status(400).send(err), console.log(err)));
          })
          .catch((err) => (res.status(400).send(err), console.log(err)));
      },
  
      delete: (req, res) => {
        var { id } = req.params;
        customer
          .findOne({
            where: { id: id },
          })
          .then((customer) => {
            customer
              .destroy()
              .then((result) => {
                res.status(201).json(result);
              })
              .catch((err) => (res.status(400).send(err), console.log(err)));
          })
          .catch((err) => (res.status(400).send(err), console.log(err)));
      },
    };
  };
  