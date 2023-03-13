"use strict";
module.exports = (app, db) => {
  var router = require("express").Router();
  var controller = require("../../controller/order")(db);

  router.route("/orders")
  .get(controller.list)
  .post(controller.insert);

  router
    .route("/orders/:id")
    .get(controller.getById)
   

  app.use(router);
};
