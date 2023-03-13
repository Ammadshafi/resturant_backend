"use strict";
module.exports = (app, db) => {
  var router = require("express").Router();
  var controller = require("../../controller/customer")(db);

  router.route("/customers")
  .get(controller.list)
  .post(controller.insert);

  router
    .route("/customers/:id")
    .get(controller.getById)
    .put(controller.update)
    .delete(controller.delete);

  app.use(router);
};
