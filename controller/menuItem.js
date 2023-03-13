module.exports = (db) => {
  const {menuItem}=db
  const multer = require("multer");

  var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, "public/product");
    },
    filename: function (req, file, cb) {
      file.originalname = `exp${new Date().getTime()}_${file.originalname}`;
      cb(null, file.originalname);
    },
  });
  return {
    
    list: (req, res) => {
      menuItem
        .findAll()
        .then((result) => {
          res.send(result);
        })
        .catch((err) => res.status(400).send(err));
    },

    getById: (req, res) => {
      var { id } = req.params;
      menuItem
        .findByPk(id)
        .then((result) => {
          res.json(result);
        })
        .catch((err) => res.status(400).send(err));
    },

    insert: (req, res) => {
      
      const upload = multer({ storage }).single("image");
      upload(req, res, async (err) => {
        if (err) {
          return res.send(err);
        }
        console.log("file uploaded to server");
        try {
          if (req.file) {
            const product = req.file.originalname;
            req.body["image"] = "/product/" + product;
          }
          console.log(req.body)
          menuItem
            .create(req.body)
            .then((newProduct) => {
              res.status(201).json(newProduct);
            })
            .catch((err) => res.status(400).send(err));
        } catch (err) {
          next(err);
          console.log(err);
        }
      });
    },

    update: (req, res) => {
      const { id } = req.params;      
      const upload = multer({ storage }).single("image");
      upload(req, res, async (err) => {
        if (err) {
          return res.send(err);
        }
        console.log("file uploaded to server");
        try {
          if (req.file) {
            const product = req.file.originalname;
            req.body["image"] = "/product/" + product;
          }
          menuItem.findByPk(id).then((product)=>{
            product
            .update(req.body)
            .then((newProduct) => {
              res.status(201).json(newProduct);
            })
            .catch((err) => res.status(400).send(err));
          }).catch((err)=>console.log(err))

         
        } catch (err) {
          next(err);
          console.log(err);
        }
      });
    },

    delete: (req, res) => {
      var { id } = req.params;
      menuItem
        .findOne({
          where: { id: id },
        })
        .then((Item) => {
          Item
            .destroy()
            .then((updatedItem) => {
              res.status(201).json(updatedItem);
            })
            .catch((err) => (res.status(400).send(err), console.log(err)));
        })
        .catch((err) => (res.status(400).send(err), console.log(err)));
    },
  };
};
