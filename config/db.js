"use strict";

const { Sequelize, DataTypes } = require("sequelize");
const env = require("./env");

const sequelize = new Sequelize(
  env.DATABASE_NAME,
  env.DATABASE_USERNAME,
  env.DATABASE_PASSWORD,
  {
    host: env.DATABASE_HOST,
    port: env.DATABASE_PORT,
    dialect: env.DATABASE_DIALECT,
    dialectOptions: {
      instanceName: env.DATABASE_INSTANCE,
    },
  }
);

// Connect all the models/tables in the database to a db object,
//so everything is accessible via one object
const db = {};

db.sequelize = sequelize;
db.Sequelize = Sequelize;

db.menuItem = require("../models/menuItem")(sequelize, Sequelize);
db.orderItem = require("../models/orderItem")(sequelize, Sequelize);
db.order = require("../models/order")(sequelize, Sequelize);
db.customer = require("../models/customer")(sequelize, Sequelize);

// join for order
db.order.hasMany(db.orderItem,{ foreignKey: "id" })
db.orderItem.belongsTo(db.order,{ foreignKey: "order_id" })
// join for order
db.order.hasOne(db.customer,{ foreignKey: "id" })
db.customer.belongsTo(db.order,{ foreignKey: "customer_id" })

// join for order item
// db.orderItem.hasOne(db.menuItem,{ foreignKey: "id" })
// db.menuItem.belongsTo(db.order,{ foreignKey: "menu_item_id" })



module.exports = db;
