"use strict";
module.exports = (app, db) => {
  var router = require("express").Router();
  var controller = require("../../controller/menuItem")(db);

  router.route("/items").get(controller.list).post(controller.insert);

  router
    .route("/items/:id")
    .get(controller.getById)
    .put(controller.update)
    .delete(controller.delete);

  app.use(router);
};
