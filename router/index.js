"use strict";

const routes = [
  require("./routes/menuItem"),
  require("./routes/order"),
  require("./routes/customer"),
 
];

module.exports = function router(app, db) {
  return routes.forEach((route) => {
    route(app, db);
  });
};
