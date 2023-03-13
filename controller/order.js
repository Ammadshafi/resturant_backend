module.exports = (db) => {
    const {order,orderItem,customer}=db
    return {
      list: (req, res) => {
        order
          .findAll({include:[orderItem]})
          .then((result) => {
            res.send(result);
          })
          .catch((err) => res.status(400).send(err));
      },
  
      getById: (req, res) => {
        var { id } = req.params;
        order
          .findByPk(id,{include:[orderItem]})
          .then((Item) => {
            res.json(Item);
          })
          .catch((err) => res.status(400).send(err));
      },
  
      insert:(req, res) => {
        const {products,customer} = req.body;
        delete req.body.products;
        delete req.body.customer;
        
        db.customer.create(customer).then((customer)=>{
          order
          .create(req.body,)
          .then((order) => {
            const data = products.map((cur)=>({...cur,order_id:order.id,customer_id:customer.id}))
            orderItem.bulkCreate(data)
            .then((data)=>res.status(201).send({...order.dataValues,products:[...data]}))
            .catch((err)=>console.log(err))
          })
          .catch((err) => (res.status(400).send(err),console.log(err)));
        })
        
      },
    };
  };
  