"use strict";

module.exports = (sequelize, DataTypes) => {
  const order_item = sequelize.define(
    "order_item",
    {
      id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        primaryKey:true
      },
        quantity: DataTypes.INTEGER,
      order_id:{
        type:DataTypes.INTEGER,
        required:true
      }
    },
    {
      timestamps: false,
    }
  );

  return order_item;
};
