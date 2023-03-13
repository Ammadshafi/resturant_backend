"use strict";

module.exports = (sequelize, DataTypes) => {
  const order = sequelize.define(
    "order",
    {
        customer_id:DataTypes.STRING,
        order_date: DataTypes.DATE,
        total_price: DataTypes.FLOAT
    },
    {
      timestamps: false,
    }
  );

  return order;
};
